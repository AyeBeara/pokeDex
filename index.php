<!DOCTYPE html>
<html lang="en">
    <head>
        <title>PokéDex</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="basic.css">
        <style>
        div.windows {
            float:right;
        }
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
        <script>
            window.addEventListener("load", function() {
                let loginForm = document.forms.loginForm;
                let searchForm = document.forms.searchForm;
                let errLog = document.getElementById("errLog");
                let errSrch = document.getElementById("errSrch");
                loginForm.addEventListener("submit", function(event) {
                    if (loginForm.userLog.value === "") {
                        event.preventDefault();
                        errLog.style.display = "initial";   
                        errLog.innerHTML = "Please enter a Username";                    
                    } else if (loginForm.pw.value==="") {
                        event.preventDefault();
                        errLog.style.display = "initial";
                        errLog.innerHTML = "Please enter a Password";
                        errLog.style.display = "none";
                    };
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
        <h1>Start working on a landing page</h1>
        <div class="mtext"><p>Have a login window and separate login page. The login window floating right will have another user search window underneath</p></div>
        <div class="windows">
            <div class="login">
                <form id="loginForm" method="get">
                    <table>
                        <tr>
                            <th><label for="userLog">Username:</label></th>
                            <th><label for="pw">Password:</label></th>
                        </tr>
                        <tr>
                            <td><input type="text" id="userLog" name="userLog"></td>
                            <td><input type="password" id="pw" name="pw"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;"><button type="submit">Log In</button></td>
                        </tr>
                        <tr>
                            <td colspan="2"><p id="errLog" style="display:none;"></p></td>
                        </tr>
                    </table>
                </form>
            </div>
            <br>
            <div class="login">
                <form id="searchForm">
                    <table>
                        <tr>
                            <th><label for="userSearch">Username:</label></th>
                        </tr>
                        <tr>
                            <td><input type="text" id="userSearch" name="userSearch"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><button type="submit">Search</button></td>
                        </tr>
                        <tr>
                            <td colspan="2"><p id="errSrch" style="display:none;">User does not exist</p></td>
                        </tr>
                    </table>
                </form>
                <?php
                    if (isset($_REQUEST["userSearch"])) {
                        session_start();

                        $_SESSION["userSearch"] = $_REQUEST["userSearch"];

                        header("Location: /myapp/userSearch.php");
                    }
                ?>
            </div>
        </div>
    </body>
</html>

<!-- FUTURE PLANS -- IMPLEMENT MULTI-TABLE JOINS TO SHOW HOW POKEMON PERFORM AGAINST OTHER TYPES USING FK CONSTRAINTS ON TYPE 1 AND TYPE 2 TO THE VARIOUS TYPE TABLES (WEAK, STRONG, AND IMMUNE)-->