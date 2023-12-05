<?php
require_once "config.php";
session_start();

$limit = 10;
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start = ($page - 1) * $limit;

$id = 'PokedexEntry';
$name = 'PokemonName';
$lev = 'level';
$exp = 'exp';

$rows = array($id, $name, $level, $exp);

$sql = "SELECT ?, ?, ?, ? FROM `pokemon` JOIN userpokemon ON PokedexEntry = pokeID WHERE email = ? LIMIT $start, $limit;";

if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("sssss", $id, $name, $lev, $exp, $_SESSION["id"]);
    if ($stmt->execute()) {
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            foreach($rows as $cell) {
                echo "<td>";
                if([$cell == 'exp']){
                    echo "<progress value=";
                    echo $rows[$cell];
                    echo " min=0 max=3>";
                    echo ($rows[$cell]/3) * 100;
                    echo "%<progress><br><button onclick=train()>Level Up<button>";
                    echo "<td>";
                }
                else{
                    echo $rows[$cell];
                    echo "<td>";
                }
            }
            echo "</tr>";
        }
    } else {
        echo "bad statement";
    }
}
?>
