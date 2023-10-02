<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>PokéDex | Log In</title>
        <link rel="stylesheet" href="basic.css">
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
        <h1>Work on a login page</h1>
        <div class="mtext">
            <p>Basics</p>
        </div>
        <div class="login">
            <form id="userLogin" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th><label for="username">Username:</label></th>
                        <th><label for="pw">Password:</label></th>
                    </tr>
                    <tr>
                        <td><input type="text" id="username" name="username"></td>
                        <td><input type="password" id="pw" name="pw"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button type="submit" form="userLogin">Submit</button></td>
                    </tr>
                </table>
            </form>
        </div>
        <?php
        function load_db_pass() {
            fopen("C:\\xampp\\password.txt", "r");
            $pwd_file = fopen("C:\\xampp\\password.txt", "r");
            $pass = fread($pwd_file,filesize("C:\\xampp\\password.txt"));
            fclose($pwd_file);
            
            return $pass;
        }
        function is_data_valid() {
            if ($_SERVER["REQUEST_METHOD"] !== "POST") {
                return false;
            }
            if (empty($_REQUEST["username"]) || empty($_REQUEST["pw"])) {
                return false;
            }
            return true;
        }

        $conn = new mysqli("localhost", "xampp", load_db_pass(), "pokedex");
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            } else if (is_data_valid()) {
                $user = $_REQUEST["username"];

                $stmt = $conn->prepare("SELECT Username, PasswordHash FROM accounts WHERE Username = ?");
                $stmt->bind_param("s", $user);
                $stmt->execute();

                $result = $stmt->get_result();
                $row = $result->fetch_assoc();

                if ($row) {
                    $hash = $row["PasswordHash"];

                    if (password_verify($_REQUEST["pw"], $hash)) {
                        session_start();
                        $_SESSION["username"] = $row["Username"];
                        header("Location: /myapp/dashboard.php");
                    } else {
                        echo "Login Failed";
                    }
                } else {
                    echo "Login Failed";
                }

                $stmt->close();
            } else if ($_SERVER["REQUEST_METHOD"] === "POST") {
                echo "Bad form";
            }
        ?>
    </body>
</html>