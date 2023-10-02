<!DOCTYPE html>
<?php
    session_start();

    if (isset($_REQUEST["logout"])) {
        session_unset();
    }

    function load_db_pass() {
        fopen("C:\\xampp\\password.txt", "r");
        $pwd_file = fopen("C:\\xampp\\password.txt", "r");
        $pass = fread($pwd_file,filesize("C:\\xampp\\password.txt"));
        fclose($pwd_file);
        
        return $pass;
    }

    $conn = new mysqli("localhost", "xampp", load_db_pass(), "pokedex");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>PokéDex | Dashboard</title>
        <link rel="stylesheet" href="basic.css">
        <style>
            div.newPoke {
            margin: 1% 0%;
            padding: 5px;
            background-color: lightgray; 
            border: 1px solid black;
            float: right; 
            position: relative;
            right: 5%;
        }
        div.mtext {
            max-width: 40%;
            float: left;
        }
        th {
            border: 1px solid black;
        }
        </style>
    </head>
    <header>
    <?php
        if (isset($_SESSION["username"])) {
    ?>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="userCreate.php">User Creation</a></li>
            <li><a href="userLogin.php">Log In</a></li>
            <li><a href="userSearch.html">User Search</a></li>
        </ul>
        <form style="float:right" id="exit">
            <input type="hidden" id="logout" name="logout" value="1">
            <button style="float:right" type="submit">Logout</button>
        </form>
    </header>
    <body>
        <h1>Work on a dashboard page</h1>
        <div id="mtext">
            <p>Take users here after they successfully login</p>
        </div>
        <h2>
        <?php
            $stmt = $conn->prepare("SELECT fname FROM accounts WHERE Username=?");
            $stmt->bind_param("s", $_SESSION["username"]);
            $stmt->execute();

            $result = $stmt->get_result();
            $row = $result->fetch_assoc();

            if ($row) {
                echo $row["fname"];
            } else {
                echo "ERR";
            }
            $stmt->close();
        ?>'s PokéMon</h2>

        <div id="newPoke">
            <form name="newPoke" method="post">
                PokéMon ID: <input name="pokeID" type="number">
                <br />
                <button type="submit" for="newPoke">Add New PokéMon</button>
            </form>
            <?php
                if (!(empty($_REQUEST["pokeID"]))) {
                    $stmt = $conn->prepare("INSERT INTO pokedex.userpokemon (username, pokeID) VALUES (?, ?)");
                    $stmt->bind_param("si", $_SESSION["username"], $_REQUEST["pokeID"]);
                    //die out of execute before they can induce a failure, verify pokeid in pokemon
                    $stmt->execute();
                    $stmt->close();

                }
            ?>
        </div>

        <?php
        } else {
        ?>

        <a href="userCreate.php">Sign Up</a> or <a href="userLogin.php">Log In</a>

        <?php 
        }
        ?>
        <table>
            <caption>Your PokéMon</caption>
            <tr>
                <th>PokéID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Ability</th>
                <th>Type1</th>
                <th>Type2</th>
                <th>Height</th>
                <th>Weight</th>
            </tr>
            <?php
                if (isset($_SESSION["username"])) {
                    $stmt = $conn->prepare("SELECT * FROM userpokemon JOIN pokemon ON userpokemon.pokeID = pokemon.PokedexEntry WHERE userpokemon.username = ?");
                    $stmt->bind_param("s", $_SESSION["username"]);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    $stmt->close();
                }

                while ($row = $result->fetch_assoc()) {
                    echo "<tr><td>" . $row["PokedexEntry"] . "</td><td>" . $row["PokemonName"] . "</td><td>" . $row["Category"] . "</td><td>" . $row["Ability"] . "</td><td>" . $row["Type"] . "</td><td>" . $row["Type2"] . "</td><td>" . $row["Height"] . "</td><td>" . $row["Weight"];
                    echo "</td></tr>\n";
                }
            ?>
        </table>
    </body>
</html>