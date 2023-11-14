<?php
require_once "config.php";
session_start();

$limit = 10;
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start = ($page - 1) * $limit;

$id = 'PokedexEntry';
$name = 'PokemonName';
$cat = 'Category';
$ab = 'Ability';
$t1 = 'Type1';
$t2 = 'Type2';
$h = 'Height';
$w = 'Weight';
$trade = 'tradeable';

$rows = array($id, $name, $cat, $ab, $t1, $t2, $h, $w, $trade);

$sql = "SELECT PokedexEntry, PokemonName, Category, Ability, types1.Type AS Type1, types2.Type AS Type2, Height, Weight, tradeable FROM `pokemon` JOIN types AS types1 ON type1 = typeID JOIN types AS types2 ON type2 = types2.typeID JOIN userpokemon ON PokedexEntry = pokeID WHERE email = ? LIMIT $start, $limit;";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            foreach($rows as $cell) {
                echo "<td>";
                if ($cell == 'tradeable') {
                    echo "<input type=checkbox " . ($row[$cell] == 0 ? "checked" : "") . "data-bs-toggle='modal' data-bs-target='#confirmTrade' onclick='trade(this)'>";
                    echo "</td>";
                    break;
                }
                echo $row[$cell];
                echo "</td>";
            }
            echo "</tr>";
        }
    } else {
        echo "bad statement";
    }
}
?>