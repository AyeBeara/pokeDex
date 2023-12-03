<?php
require_once "config.php";
session_start();

$user1 = $_SESSION["id"];
$user1_offer = $_GET["user1_offer"];
$user2 = $_GET["user2"];
$user2_offer = $_GET["user2_offer"];

$sql = "SELECT PokedexEntry FROM pokemon WHERE PokemonName = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $user1_offer);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user1_offer = $row["PokedexEntry"];
    }
  }
}

$sql = "SELECT PokedexEntry FROM pokemon WHERE PokemonName = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $user2_offer);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user2_offer = $row["PokedexEntry"];
    }
  }
}

$sql = "SELECT email FROM accounts WHERE username = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $user2);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      $user2 = $row["email"];
    }
  }
}

$sql = "INSERT INTO trades (`user1`, `user1_offer`, `user2`, `user2_offer`) VALUES (?, ?, ?, ?)";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("sisi", $user1, $user1_offer, $user2, $user2_offer);

  $stmt->execute();
  $stmt->close();
}

echo "trade_offers.html";
