<?php
require_once 'config.php';
session_start();

$uid = $_SESSION["id"];
$pid = $_GET["id"];
echo $uid;
echo $pid;

$sql = "DELETE FROM offers WHERE user = ? AND offeredID = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("ss", $uid, $pid);
  if (!$stmt->execute()) {
    echo "bad statement";
  }
}
