<!DOCTYPE html>
<?php session_start(); ?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>PokéDex | User Creation</title>
        <link rel="stylesheet" href="basic.css">
        <style>
            div.fields {
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
        <script>
            window.addEventListener("load", function() {
                let userCreate = document.forms.userCreate;
                userCreate.addEventListener("submit", function(event) {
                    let pw1 = userCreate.pw1.value;
                    let pw2 = userCreate.pw2.value;
                    let errorLog = document.getElementById("errLog");
                    if (userCreate.username.value.length > 100) {
                        event.preventDefault();
                        errorLog.style.display = "initial";
                        errorLog.innerHTML = "Username is too long!"
                    } 
                    if (pw1.length < 8) {
                        event.preventDefault();
                        errorLog.style.display = "initial";
                        errorLog.innerHTML = "Password is too short!"
                    }
                    if (pw1 !== pw2) {
                        event.preventDefault();
                        errorLog.style.display = "initial";
                        errorLog.innerHTML = "Passwords do not match!";
                    }
                });
            });
        </script>
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
        <h1>Start creating a user creation page</h1>
        <div class="mtext">
            <p>Basics</p>
        </div>
        <div class="fields">
            <form id="userCreate" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th><label for="fname">First Name:</label></th>
                        <th><label for="lname">Last Name:</label></th>
                        <th><label for="email">Email:</label></th>
                    </tr>
                    <tr>
                        <td><input type="text" id="fname" name="fname"></td>
                        <td><input type="text" id="lname" name="lname"></td>
                        <td><input type="email" id="email" name="email"></td>
                    </tr>
                    <tr>
                        <th><label for="username">Username:</label></th>
                        <th><label for="pw1">Password:</label></th>
                        <th><label for="pw2">Confirm Password:</label></th>
                    </tr>
                    <tr>
                        <td><input type="text" id="username" name="username"></td>
                        <td><input type="password" id="pw1" name="pw1"></td>
                        <td><input type="password" id="pw2" name="pw2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button form="userCreate" type="submit">Submit</button></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p id="errLog" style="display:initial;">
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
            
                            if (empty($_REQUEST["username"]) || empty($_REQUEST["fname"]) || empty($_REQUEST["lname"]) || empty($_REQUEST["email"]) || empty($_REQUEST["pw1"]) || empty($_REQUEST["pw2"])) {
                                return false;
                            }
            
                            if (strlen($_REQUEST["user"]) > 25) {
                                return false;   // User name is too long
                            }
            
                            if (strlen($_REQUEST["pw1"]) < 8) {
                                return false;   // Password is too short
                            }
            
                            if ($_REQUEST["pw1"] !== $_REQUEST["pw2"]) {
                                return false;   // Passowrds do not match
                            }
            
                            return true;
                        }

                        $conn = new mysqli("localhost", "xampp", load_db_pass(), "pokedex");

                        if ($conn->connect_error) {
                            die("Connection failed: " . $conn->connect_error);
                        } else if (is_data_valid()) {
                            $user = $_REQUEST["username"];
                            $fname = $_REQUEST["fname"];
                            $lname = $_REQUEST["lname"];
                            $email = $_REQUEST["email"];
                            $hash = password_hash($_REQUEST["pw1"], PASSWORD_DEFAULT);

                            $stmt = $conn->prepare("INSERT INTO pokedex.accounts (Username, fname, lname, email, PasswordHash) VALUES (?, ?, ?, ?, ?)");
                            $stmt->bind_param("sssss", $user, $fname, $lname, $email, $hash);
                            $stmt->execute();
                            $stmt->close();

                            $_SESSION["username"] = $_REQUEST["username"];
                            $_SESSION["hash"] = $hash;

                            header("Location: /myapp/dashboard.php");
                        } else if ($_SERVER["REQUEST_METHOD"] === "POST") {
                            echo "Account could not be created. Please try again.";
                        }
                        // Need to establish way to check if username already exists in database
                        ?>
                        </p></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>