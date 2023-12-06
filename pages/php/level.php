<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];
$poke = $_GET["id"];
$exp = $_GET["exp"] + 1;
$level = $_GET["level"];

$level = $exp == 3 ? $level + 1 : $level;
$exp = $exp == 3 ? 0 : $exp;

echo $level, $exp;

$sql = "UPDATE userpokemon SET level = ?, exp = ? WHERE pokeID = ? AND email = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("iiis", $level, $exp, $poke, $id);

  $stmt->execute();
}
