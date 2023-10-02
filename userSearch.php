<!DOCTYPE html>
<?php
    session_start();

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
        <link rel="stylesheet" href="basic.css">
        <title>PokéDex | User Search</title>
        <style>
            div.login {
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
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="userCreate.php">User Creation</a></li>
            <li><a href="userLogin.php">Log In</a></li>
            <li><a href="userSearch.html">User Search</a></li>
        </ul>
    </header>
    <body>
        <h1>User Search</h1>
        <div class="mtext">
            <p>Basic feedback table using a view for the data</p>
            <?php
            //need way to verify user exists in accounts table so we don't have to handle errors
            if (isset($_REQUEST["username"])) {
                echo "<br><table><caption>";
                $stmt = $conn->prepare("SELECT username FROM accounts WHERE Username=?");
                $stmt->bind_param("s", $_REQUEST["username"]);
                $stmt->execute();
    
                $result = $stmt->get_result();
                $row = $result->fetch_assoc();

                if ($row) {
                    echo $row["username"];
                } else {
                    echo "ERR";
                }
                $stmt->close();
                echo "'s PokéMon" . "</caption>";
                echo 
                "<tr>
                    <th>PokéID</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Ability</th>
                    <th>Type1</th>
                    <th>Type2</th>
                    <th>Height</th>
                    <th>Weight</th>
                </tr>";
                $stmt = $conn->prepare("SELECT * FROM userpokemon JOIN pokemon ON userpokemon.pokeID = pokemon.PokedexEntry WHERE userpokemon.username = ?");
                $stmt->bind_param("s", $_REQUEST["username"]);
                $stmt->execute();
                $result = $stmt->get_result();
                $stmt->close();

                while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["PokedexEntry"] . "</td><td>" . $row["PokemonName"] . "</td><td>" . $row["Category"] . "</td><td>" . $row["Ability"] . "</td><td>" . $row["Type"] . "</td><td>" . $row["Type2"] . "</td><td>" . $row["Height"] . "</td><td>" . $row["Weight"];
                echo "</td></tr>\n";
                }
                echo "</table>";
            } else if (isset($_SESSION["userSearch"])) {
                echo "<br><table><caption>";
                $stmt = $conn->prepare("SELECT username FROM accounts WHERE Username=?");
                $stmt->bind_param("s", $_SESSION["userSearch"]);
                $stmt->execute();
    
                $result = $stmt->get_result();
                $row = $result->fetch_assoc();

                if ($row) {
                    echo $row["username"];
                } else {
                    echo "ERR";
                }
                $stmt->close();
                echo "'s PokéMon" . "</caption>";
                echo 
                "<tr>
                    <th>PokéID</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Ability</th>
                    <th>Type1</th>
                    <th>Type2</th>
                    <th>Height</th>
                    <th>Weight</th>
                </tr>";
                $stmt = $conn->prepare("SELECT * FROM userpokemon JOIN pokemon ON userpokemon.pokeID = pokemon.PokedexEntry WHERE userpokemon.username = ?");
                $stmt->bind_param("s", $_SESSION["userSearch"]);
                $stmt->execute();
                $result = $stmt->get_result();
                $stmt->close();

                while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["PokedexEntry"] . "</td><td>" . $row["PokemonName"] . "</td><td>" . $row["Category"] . "</td><td>" . $row["Ability"] . "</td><td>" . $row["Type"] . "</td><td>" . $row["Type2"] . "</td><td>" . $row["Height"] . "</td><td>" . $row["Weight"];
                echo "</td></tr>\n";
                }
                echo "</table>";
            }
        ?>
        </div>
        <div class="login">
            <form id="userSearch">
                <table>
                    <tr>
                        <th>Username:</th>
                    </tr>
                    <tr>
                        <td><input type="text" id="username" name="username"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button for="userSearch" type="submit">Search</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>