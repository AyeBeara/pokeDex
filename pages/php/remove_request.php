<?php
require_once 'config.php';
session_start();

$uid = $_SESSION["id"];
$pid = $_GET["id"];

$sql = "DELETE FROM requests WHERE user = ? AND requestedID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("ss", $uid, $pid);
  if (!$stmt->execute()) {
    echo "bad statement";
  }
}
