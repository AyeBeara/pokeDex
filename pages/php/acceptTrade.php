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
  $stmt->close();
}
$sql = "SELECT PokedexEntry FROM pokemon WHERE PokemonName = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $pk2);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $pk2 = $row["PokedexEntry"];
  }
  $stmt->close();
}

$sql = "DELETE FROM trades WHERE user1 = ? AND user1_offer = ? AND user2 = ? AND user2_offer = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("ssss", $user, $pk1, $id, $pk2);

  $stmt->execute();
  $stmt->close();
}

$sql = "DELETE FROM offers WHERE user = ? AND offeredID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $user, $pk1);

  $stmt->execute();
  $stmt->close();
}

$sql = "DELETE FROM offers WHERE user = ? AND offeredID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $id, $pk2);

  $stmt->execute();
  $stmt->close();
}

$sql = "SELECT requestedID FROM requests WHERE user = ? AND requestedID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $id, $pk1);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $stmt->store_result();
    if ($result->num_rows > 0) {
      $subsql = "DELETE FROM requests WHERE user = ? AND requestedID = ?";
      if ($substmt = $link->prepare($subsql)) {
        $substmt->bind_param("si", $id, $pk1);

        $substmt->execute();
      }
      $substmt->close();
    }
  }
  $stmt->close();
}

$sql = "SELECT requestedID FROM requests WHERE user = ? AND requestedID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $user, $pk2);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $stmt->store_result();
    if ($result->num_rows > 0) {
      $subsql = "DELETE FROM requests WHERE user = ? AND requestedID = ?";
      if ($substmt = $link->prepare($subsql)) {
        $substmt->bind_param("si", $user, $pk2);

        $substmt->execute();
      }
      $substmt->close();
    }
  }
  $stmt->close();
}

$sql = "SELECT `level`, exp FROM userpokemon WHERE email = ? AND pokeID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $user, $pk1);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    $pk1_level = $row["level"];
    $pk1_exp = $row["exp"];
  }
}

$sql = "SELECT `level`, exp FROM userpokemon WHERE email = ? AND pokeID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $id, $pk2);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    $pk2_level = $row["level"];
    $pk2_exp = $row["exp"];
  }
}

$sql = "DELETE FROM userpokemon WHERE email = ? AND pokeID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $user, $pk1);

  $stmt->execute();
  $stmt->close();
}

$sql = "DELETE FROM userpokemon WHERE email = ? AND pokeID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("si", $id, $pk2);

  $stmt->execute();
  $stmt->close();
}

$sql = "INSERT INTO userpokemon (email, pokeID, level, exp, tradeable) VALUES (?, ?, ?, ?, '0')";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("siii", $user, $pk2, $pk2_level, $pk2_exp);
  $stmt->execute();
  $stmt->close();
}

$sql = "INSERT INTO userpokemon (email, pokeID, level, exp, tradeable) VALUES (?, ?, ?, ?, '0')";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("siii", $id, $pk1, $pk1_level, $pk1_exp);
  $stmt->execute();
  $stmt->close();
}
