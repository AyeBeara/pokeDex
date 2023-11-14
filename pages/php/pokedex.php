<?php
require_once "config.php";
session_start();
$limit = 11;
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

$rows = array($id, $name, $cat, $ab, $t1, $t2, $h, $w);

$sql = "SELECT * FROM `pokemon` LEFT JOIN userpokemon ON PokedexEntry = pokeID LIMIT $start, $limit;";

if ($stmt = $link->prepare($sql)) {
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            if ($row["email"] == $_SESSION["id"]) {
                foreach($rows as $cell) {
                    echo "<td>";
                    echo $row[$cell];
                    echo "</td>";
                }
            } else {
                echo "<td colspan=8><em>You have not discovered this pokemon yet...Catch more!</em></td>";
            }
            echo "</tr>";
        }
    } else {
        echo "bad statement";
    }
}
?>