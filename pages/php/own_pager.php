<?php
require_once "config.php";

$limit = 11;
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start = ($page - 1) * $limit;

$sql = "SELECT COUNT(*) as total FROM userpokemon";

if ($stmt = $link->prepare($sql)) {
    if ($stmt->execute()) {
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
        $total = ceil($row['total'] / $limit);

        for ($i = 1; $i <= $total; $i++) {
            echo "<li class='page-item" . ($i == $page ? " disabled'" : "'")."><a class='page-link' href='#' onclick='pokedex(".$i.")'>".$i."</a></li>";
        }
    }
}
?>