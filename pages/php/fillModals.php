<?php
require_once "config.php";
session_start();

$offers = array();
$id = $_SESSION["id"];

$sql = 'SELECT PokemonName, PokedexEntry FROM pokemon JOIN offers WHERE offeredID = PokedexEntry AND user = ?';
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);
  if ($stmt->execute()) {
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
      array_push($offers, "<option value='" . $row["PokedexEntry"] . "'>" . $row["PokemonName"] . "</option>");
    }
  } else {
    echo "bad statement";
  }
  $stmt->close();
}

$response = array(
  "offers" => $offers,
);

header('Content-Type: application/json');
echo json_encode($response);
