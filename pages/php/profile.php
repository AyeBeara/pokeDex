<?php
require_once "config.php";
session_start();

$sql = "SELECT * FROM accounts WHERE email = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $_SESSION["id"]);

  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
  }
  $stmt->close();
}

$u = $row["Username"];
$f = $row["fname"];
$l = $row["lname"];

$response = array(
  "u" => $u,
  "f" => $f,
  "l" => $l,
);

header("Content-Type: application/json");
echo json_encode($response);
