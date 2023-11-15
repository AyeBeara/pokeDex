<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];

$o1 = $_GET["offer1"];
$o2 = $_GET["offer2"];
$o3 = $_GET["offer3"];
$o4 = $_GET["offer4"];
$o5 = $_GET["offer5"];
$o6 = $_GET["offer6"];
$offers = array($o1, $o2, $o3, $o4, $o5, $o6);

$co1 = $_GET["offered1"];
$co2 = $_GET["offered2"];
$co3 = $_GET["offered3"];
$co4 = $_GET["offered4"];
$co5 = $_GET["offered5"];
$co6 = $_GET["offered6"];
$currOffers = array($co1, $co2, $co3, $co4, $co5, $co6);

$r1 = $_GET["request1"];
$r2 = $_GET["request2"];
$r3 = $_GET["request3"];
$r4 = $_GET["request4"];
$r5 = $_GET["request5"];
$r6 = $_GET["request6"];
$requests = array($r1, $r2, $r3, $r4, $r5, $r6);

$cr1 = $_GET["requested1"];
$cr2 = $_GET["requested2"];
$cr3 = $_GET["requested3"];
$cr4 = $_GET["requested4"];
$cr5 = $_GET["requested5"];
$cr6 = $_GET["requested6"];
$currRequests = array($cr1, $cr2, $cr3, $cr4, $cr5, $cr6);

/* maximum of 6 requests/offers */

$sql = "SELECT * FROM `requests` WHERE user = ?";
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        if ($stmt->num_rows() >= 6) {
            $update = 'UPDATE requests SET requestedID = ? WHERE user = ? AND requestedID = ?';
            if ($stmt = $link->prepare($update)) {
                for ($i = 0; $i < 6; $i++) {
                    $stmt->bind_param("isi",$requests[$i],$id,$currRequests[$i]);
                    if ($stmt->execute()) {
                        echo "requests updated successfully";
                    }
                }
            }
        } else {
            $sql = "INSERT INTO `requests` (`user`, `requestedID`) VALUES (?, ?)";
            if ($stmt = $link->prepare($sql)) {
                foreach($requests as $request) {
                    $stmt->bind_param("si", $id, $request);
                    if ($stmt->execute()) {
                        echo "request inserted successfully";
                    }
                }
            }
        }
    }
}

$sql = "SELECT * FROM `offers` WHERE user = ?";
if ($stmt = $link->prepare($sql)) {
    $stmt->bind_param("s", $id);
    if ($stmt->execute()) {
        if ($stmt->num_rows() >= 6) {
            $update = 'UPDATE offers SET offeredID = ? WHERE user = ? AND offeredID = ?';
            if ($stmt = $link->prepare($update)) {
                for ($i = 0; $i < 6; $i++) {
                    $stmt->bind_param("isi",$requests[$i],$id,$currRequests[$i]);
                    if ($stmt->execute()) {
                        echo "offers updated successfully";
                    }
                }
            }
        } else {
            $sql = "INSERT INTO `offers` (`user`, `offeredID`) VALUES (?, ?)";
            if ($stmt = $link->prepare($sql)) {
                foreach($requests as $request) {
                    $stmt->bind_param("si", $id, $request);
                    if ($stmt->execute()) {
                        echo "offers inserted successfully";
                    }
                }
            }
        }
    }
}

header('Location: ../trade/listings.html');
?>