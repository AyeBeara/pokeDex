<?php
require_once "config.php";
session_start();
$pokeID = (int) $_GET["pokeID"];

$sql = "INSERT INTO `userpokemon` (`email`, `pokeID`, `level`, `exp`, `tradeable`) VALUES (?, ?, '1', '0', '0')";
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("si", $_SESSION["id"], $pokeID);
    if (!$stmt->execute()) {
        echo "You didn't catch anything...";
    }
    $stmt->close();
}

?>