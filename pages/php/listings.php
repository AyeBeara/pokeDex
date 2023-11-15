<?php
require_once "config.php";
session_start();

$offers = array();
$requests = array();

$sql = 'SELECT pokemon.PokemonName FROM pokemon WHERE PokedexEntry IN (SELECT pokeID FROM userpokemon WHERE email = ?)';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            array_push($offers,"<option value='".$row["PokemonName"]."'>".$row["PokemonName"]."</option>");
        }
    } else {
        echo "bad statement";
    }
    $stmt->close();
}

$sql = 'SELECT pokemon.PokemonName FROM pokemon WHERE PokedexEntry NOT IN (SELECT pokeID FROM userpokemon WHERE email = ?)';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            array_push($requests,"<option value='".$row["PokemonName"]."'>".$row["PokemonName"]."</option>");
        }
    }
    $stmt->close();
}

$response = array(
    'offers' => $offers,
    'requests' => $requests
);

header('Content-Type: application/json');
echo json_encode($response);
?>