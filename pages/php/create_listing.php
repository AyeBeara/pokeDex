<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];
$offers = array();
$requests = array();
$currOffers = array();
$currReqs = array();

$sql = 'SELECT pokemon.PokemonName, pokemon.PokedexEntry FROM pokemon WHERE PokedexEntry IN (SELECT pokeID FROM userpokemon WHERE email = ?)';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            array_push($offers,"<option value='".$row["PokedexEntry"]."'>".$row["PokemonName"]."</option>");
        }
    } else {
        echo "bad statement";
    }
    $stmt->close();
}

$sql = 'SELECT pokemon.PokemonName, pokemon.PokedexEntry FROM pokemon WHERE PokedexEntry NOT IN (SELECT pokeID FROM userpokemon WHERE email = ?)';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            array_push($requests,"<option value='".$row["PokedexEntry"]."'>".$row["PokemonName"]."</option>");
        }
    }
    $stmt->close();
}

$sql = 'SELECT PokemonName AS name, PokedexEntry as id FROM `pokemon` JOIN offers ON pokemon.PokedexEntry = offers.offeredID WHERE offers.user = ?';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        $i = 1;
        while (($row = $result->fetch_assoc()) && $i <= 6) {
            array_push($currOffers, "<input type='hidden' name='offered".$i."' id='offered".$i."' value='".$row["id"]."'><p>".$row['name']."</p>");
            $i++;
        }
    }
}

$sql = 'SELECT PokemonName AS name, PokedexEntry AS id FROM `pokemon` JOIN requests ON pokemon.PokedexEntry = requests.requestedID WHERE requests.user = ?';
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        $i = 1;
        while (($row = $result->fetch_assoc()) && $i <= 6) {
            array_push($currReqs, "<input type='hidden' name='requested".$i."' id='requested".$i."' value='".$row["id"]."'><p>".$row['name']."</p>");
            $i++;
        }
    }
}

$response = array(
    'offers' => $offers,
    'requests' => $requests,
    'currOffers' => $currOffers,
    'currReqs' => $currReqs
);

header('Content-Type: application/json');
echo json_encode($response);
?>