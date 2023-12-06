<?php
require_once "config.php";
session_start();

$limit = 10;
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start = ($page - 1) * $limit;


$sql = "SELECT PokedexEntry, PokemonName, level, exp FROM `pokemon` JOIN userpokemon ON PokedexEntry = pokeID WHERE email = ? LIMIT $start, $limit;";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<tr>" .
                "<td>" . $row["PokedexEntry"] . "</td>" .
                "<td>" . $row["PokemonName"] . "</td>" .
                "<td>" . $row["level"] . "</td>" .
                "<td><progress value='" . $row["exp"] . "' max='3'></progress></td>" .
                "<td><button type='button' class='btn btn-primary btn-sm' onclick='level(" .
                $row["PokedexEntry"] .  "," . $row["exp"] . "," . $row["level"] . "," . $page .
                ")'>Train</button></td>" .
                "</tr>";
        }
    } else {
        echo "bad statement";
    }
}
