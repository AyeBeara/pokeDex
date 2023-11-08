<?php
require_once "config.php";

$sql = "SELECT PokedexEntry, PokemonName, Sprite FROM `catch_rate` JOIN pokemon ON PokedexEntry = catch_id ORDER BY RAND() LIMIT 1";
if ($stmt = $link->prepare($sql)) {
    if ($stmt->execute()) {
        $stmt->store_result();

        $stmt->bind_result($id, $name, $sprite);
        if (!$stmt->fetch()) {
            echo "You didn't catch anything...";
        } else {
            $response = array(
                'id' => $id,
                'name' => $name,
                'sprite' => $sprite
            );

            header('Content-Type: application/json');
            echo json_encode($response);
        }
    }
    $stmt->close();
}
?>