<?php
require_once "config.php";
session_start();

$sql = "SELECT PasswordHash AS P FROM accounts WHERE email = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $_SESSION["id"]);

  $stmt->execute();
  $result = $stmt->get_result();
  $row = $result->fetch_assoc();
}
$p = password_hash($_POST["password"], PASSWORD_DEFAULT);
$u = $_POST["user_name"];
$f = $_POST["user_first"];
$l = $_POST["user_last"];
$P = $p ?  $p : $row["P"];

$sql = "UPDATE accounts SET Username = ?, fname = ?, lname = ?, PasswordHash = ? WHERE email = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("sssss", $u, $f, $l, $p, $_SESSION["id"]);

  $stmt->execute();
}

header("Location: ../");
