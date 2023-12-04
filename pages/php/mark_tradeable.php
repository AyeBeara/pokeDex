<?php
require_once 'config.php';
session_start();

$trade = $_GET["trade"];
$pokeID = $_GET["pokeID"];

$sql = "UPDATE `userpokemon` SET `tradeable` = ? WHERE `userpokemon`.`email` = ? AND `userpokemon`.`pokeID` = ?";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("isi", $trade, $_SESSION["id"], $pokeID);
    if ($stmt->execute()) {
        echo "sucessfully marked";
    } else {
        echo "bad statement";
    }
}
