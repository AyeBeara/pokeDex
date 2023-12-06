<?php
require_once "config.php";
session_start();
$pokeID = (int) $_GET["pokeID"];

$sql = "SELECT pokeID FROM userpokemon WHERE pokeID = ? and email = ?";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("is", $pokeID, $_SESSION["id"]);
    if ($stmt->execute()) {
        $stmt->store_result();

        // $stmt->close();

        if ($stmt->num_rows() == 0) {
            $sql = "INSERT INTO `userpokemon` (`email`, `pokeID`, `level`, `exp`, `tradeable`) VALUES (?, ?, '1', '0', '0')";
            if ($stmt = $link->prepare($sql)) {
                $stmt->bind_param("si", $_SESSION["id"], $pokeID);
                if (!$stmt->execute()) {
                    echo "You didn't catch anything...";
                }
                echo "Pokemon added to your collection";
                $stmt->close();
            }
        } else {
            echo "You already have this pokemon, it wasn't added to your collection";
        }
    }
}
