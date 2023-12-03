<?php
require_once "config.php";
session_start();

$name = $_GET["id"];
$id = $_SESSION["id"];

$sql = "SELECT * FROM `userpokemon`JOIN pokemon ON pokeID = PokedexEntry WHERE email = ? AND PokemonName = ?;";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("ss", $id, $name);

  if ($stmt->execute()) {
    $stmt->store_result();

    if ($stmt->num_rows() == 0) {
      echo "#selectRequest";
    } else {
      echo "#hasOffer";
    }
  }

  $stmt->close();
}
