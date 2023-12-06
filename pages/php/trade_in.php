<?php
require_once "config.php";
session_start();

$id = $_SESSION["id"];

$sql = "SELECT username, t1.PokemonName AS pk1, t2.PokemonName AS pk2 FROM trades JOIN accounts ON user1 = email JOIN pokemon t1 ON user1_offer = t1.PokedexEntry JOIN pokemon t2 ON user2_offer = t2.PokedexEntry WHERE user2 = ?";
if ($stmt = $link->prepare($sql)) {
  $stmt->bind_param("s", $id);

  if ($stmt->execute()) {
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
      echo "<tr><td colspan='5' class='align-middle'>No incoming requests</td></tr>";
    }

    while ($row = $result->fetch_assoc()) {
      echo "<tr>" .
        "<td scope='row' class='align-middle user'>" . $row["username"] . "</td>" .
        "<td class='align-middle offer'>" . $row["pk1"] .
        "<td class='align-middle request'>" . $row["pk2"] .
        "<td class='align-middle'>" .
        "<button type='button' data-bs-toggle='modal' data-bs-target='#denyOffer' class='btn btn-danger btn-sm' onclick='deny(this)'>" .
        "Deny</button></td>" .
        "<td class='align-middle'>" .
        "<button type='button' data-bs-toggle='modal' data-bs-target='#acceptOffer' class='btn btn-primary btn-sm' onclick='accept(this)'>" .
        "Accept</button>" .
        "</tr>";
    }
  }
}
