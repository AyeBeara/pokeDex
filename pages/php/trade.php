<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];
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

$sql = "SELECT DISTINCT username FROM requests JOIN accounts ON user = email WHERE user <> ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = new User();
      $user->setName($row["username"]);
      $users[$row["username"]] = $user;
      array_push($names, $row["username"]);
    }
  }
  $stmt->close();
}


$sql = "SELECT DISTINCT username FROM offers JOIN accounts ON user = email WHERE user <> ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      if (!in_array($row["username"], $users) && !in_array($row["username"], $names)) {
        $user = new User();
        $user->setName($row["username"]);
        $users[$row["username"]] = $user;
        array_push($names, $row["username"]);
      }
    }
  }
}

$sql = "SELECT username, pokemonName FROM requests JOIN pokemon ON requestedID = PokedexEntry JOIN accounts ON user = email WHERE user <> ?;";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = $users[$row["username"]];
      $user->addReq($row["pokemonName"]);
    }
  }
  $stmt->close();
}

$sql = "SELECT username, pokemonName FROM offers JOIN pokemon ON offeredID = PokedexEntry JOIN accounts ON user = email WHERE user <> ?;";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user = $users[$row["username"]];
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
