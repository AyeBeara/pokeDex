<?php
require_once "config.php";
session_start();

$users = array();
$names = array();

class User
{
  public String $name;
  public $requests = array();
  public $offers = array();

  public function setName(string $name)
  {
    $this->name = $name;
  }
  public function getName()
  {
    return $this->name;
  }

  public function addReq(string $req)
  {
    array_push($this->requests, $req);
  }
  public function getReqs()
  {
    return $this->requests;
  }

  public function addOff(string $off)
  {
    array_push($this->offers, $off);
  }
  public function getOffs()
  {
    return $this->offers;
  }
}

$sql = "SELECT DISTINCT user FROM requests";
if ($stmt = $link->prepare($sql)) {
  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = new User();
      $user->setName($row["user"]);
      $users[$row["user"]] = $user;
      array_push($names, $row["user"]);
    }
  }
  $stmt->close();
}


$sql = "SELECT DISTINCT user FROM offers";
if ($stmt = $link->prepare($sql)) {
  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      if (!in_array($row["user"], $users) && !in_array($row["user"], $names)) {
        $user = new User();
        $user->setName($row["user"]);
        $users[$row["user"]] = $user;
        array_push($names, $row["user"]);
      }
    }
  }
}

$sql = "SELECT user, pokemonName FROM requests JOIN pokemon ON requestedID = PokedexEntry;";
if ($stmt = $link->prepare($sql)) {
  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = $users[$row["user"]];
      $user->addReq($row["pokemonName"]);
    }
  }
  $stmt->close();
}

$sql = "SELECT user, pokemonName FROM offers JOIN pokemon ON offeredID = PokedexEntry;";
if ($stmt = $link->prepare($sql)) {
  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = $users[$row["user"]];
      $user->addOff($row["pokemonName"]);
    }
  }
  $stmt->close();
}

$response = array(
  "users" => $users,
  "names" => $names,
);

header('Content-Type: application/json');
echo json_encode($response);
