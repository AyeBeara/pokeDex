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
$trade = 'tradeable';

$rows = array($id, $name, $cat, $ab, $t1, $t2, $h, $w, $trade);

$sql = "SELECT * FROM `userpokemon` JOIN pokemon ON PokedexEntry = pokeID WHERE email = ? LIMIT $start, $limit;";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            foreach($rows as $cell) {
                echo "<td>";
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