<?php
require_once "config.php";
session_start();

$limit = 5;
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start = ($page - 1) * $limit;
$id = $_SESSION["id"];

$sql = "SELECT COUNT(*) as total FROM offers WHERE user <> ?";

if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);
  if ($stmt->execute()) {
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $total = ceil($row['total'] / $limit);

    for ($i = 1; $i <= $total; $i++) {
      echo "<li class='page-item" . ($i == $page ? " disabled'" : "'") . "><a class='page-link' href='#' onclick='trade(" . $i . ")'>" . $i . "</a></li>";
    }
  } else {
    echo "bad stmt";
  }
} else {
  echo "error";
}
