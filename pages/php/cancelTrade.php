<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];
$user = $_GET["user"];
$pk1 = $_GET["pk1"];
$pk2 = $_GET["pk2"];

$sql = "SELECT email FROM accounts WHERE username = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $user);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $user = $row["email"];
  }
  $stmt->close();
}

$sql = "SELECT PokedexEntry FROM pokemon WHERE PokemonName = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $pk1);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $pk1 = $row["PokedexEntry"];
  }
}
$sql = "SELECT PokedexEntry FROM pokemon WHERE PokemonName = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $pk2);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $pk2 = $row["PokedexEntry"];
  }
}


$sql = "DELETE FROM trades WHERE user1 = ? AND user1_offer = ? AND user2 = ? AND user2_offer = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("ssss", $id, $pk1, $user, $pk2);

  if ($stmt->execute()) {
    echo "deleted";
  } else {
    echo "could not delete";
  }
}
