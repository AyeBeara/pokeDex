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

$co1 = (isset($_GET["offered1"]) ? $_GET["offered1"] : '');
$co2 = (isset($_GET["offered2"]) ? $_GET["offered2"] : '');
$co3 = (isset($_GET["offered3"]) ? $_GET["offered3"] : '');
$co4 = (isset($_GET["offered4"]) ? $_GET["offered4"] : '');
$co5 = (isset($_GET["offered5"]) ? $_GET["offered5"] : '');
$co6 = (isset($_GET["offered6"]) ? $_GET["offered6"] : '');
$currOffers = array($co1, $co2, $co3, $co4, $co5, $co6);

$r1 = $_GET["request1"];
$r2 = $_GET["request2"];
$r3 = $_GET["request3"];
$r4 = $_GET["request4"];
$r5 = $_GET["request5"];
$r6 = $_GET["request6"];
$requests = array($r1, $r2, $r3, $r4, $r5, $r6);

$cr1 = (isset($_GET["requested1"]) ? $_GET["requested1"] : '');
$cr2 = (isset($_GET["requested2"]) ? $_GET["requested2"] : '');
$cr3 = (isset($_GET["requested3"]) ? $_GET["requested3"] : '');
$cr4 = (isset($_GET["requested4"]) ? $_GET["requested4"] : '');
$cr5 = (isset($_GET["requested5"]) ? $_GET["requested5"] : '');
$cr6 = (isset($_GET["requested6"]) ? $_GET["requested6"] : '');
$currRequests = array($cr1, $cr2, $cr3, $cr4, $cr5, $cr6);

foreach ($requests as $request) {
    $r = empty($request);
    if (!$r) {
        break;
    }
}
if (!$r) {
    $sql = "SELECT * FROM `requests` WHERE user = ?";
    if ($stmt = $link->prepare($sql)) {
        $stmt->bind_param("s", $id);
        if ($stmt->execute()) {
            $stmt->store_result();
            if ($stmt->num_rows() >= 6) {
                $update = 'UPDATE requests SET requestedID = ? WHERE user = ? AND requestedID = ?';
                if ($substmt = $link->prepare($update)) {
                    for ($i = 0; $i < 6; $i++) {
                        $substmt->bind_param("isi", $requests[$i], $id, $currRequests[$i]);
                        echo $requests[$i] . "<br>";
                        echo $currRequests[$i] . "<br>";
                        if ($substmt->execute()) {
                            echo "requests updated successfully<br>";
                        }
                    }
                }
            } else {
                $insert = "INSERT INTO `requests` (`user`, `requestedID`) VALUES (?, ?)";
                if ($substmt = $link->prepare($insert)) {
                    foreach ($requests as $request) {
                        $substmt->bind_param("si", $id, $request);
                        if ($substmt->execute()) {
                            echo "request inserted successfully";
                        }
                    }
                }
            }
        }
        $stmt->close();
    }
}

foreach ($offers as $offer) {
    $o = empty($offer);
    if (!$o) {
        break;
    }
}
if (!$o) {
    $sql = "SELECT * FROM `offers` WHERE user = ?";
    if ($stmt = $link->prepare($sql)) {
        $stmt->bind_param("s", $id);
        if ($stmt->execute()) {
            $stmt->store_result();
            if ($stmt->num_rows() >= 6) {
                echo "6 rows";
                $update = 'UPDATE offers SET offeredID = ? WHERE user = ? AND offeredID = ?';
                if ($substmt = $link->prepare($update)) {
                    for ($i = 0; $i < 6; $i++) {
                        $substmt->bind_param("isi", $offers[$i], $id, $currOffers[$i]);
                        if ($substmt->execute()) {
                            echo "offers updated successfully";
                        }
                    }
                }
            } else {
                $sql = "INSERT INTO `offers` (`user`, `offeredID`) VALUES (?, ?)";
                if ($substmt = $link->prepare($sql)) {
                    foreach ($offers as $offer) {
                        $substmt->bind_param("si", $id, $offer);
                        if ($substmt->execute()) {
                            echo "offers inserted successfully";
                        }
                    }
                }
            }
        }
        $stmt->close();
    }
}

header('Location: ../trade/create_listing.html');
