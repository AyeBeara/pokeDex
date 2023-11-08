<?php
    session_start();

    if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
        header("location: dashboard.html");
        exit;
    }
    require_once "config.php";

    $username = $password = "";
    $username_err = $password_err = $login_err = "";

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(empty(trim($_POST["username"]))){
            $username_err = "Please enter username.";
        } else{
            $username = trim($_POST["username"]);

        }
        if(empty(trim($_POST["password"]))){
            $psasword_err = "Please enter password.";
        } else{
            $password = trim($_POST["password"]);
        }
        if(empty($username_err) && empty($password_err)){

            // Prepare a select statement
            $sql = "SELECT email, Username, passwordHash FROM accounts WHERE username = ?";
            if($stmt = mysqli_prepare($link, $sql)){

                // Bind variables to the prepared statement as parameters
                mysqli_stmt_bind_param($stmt, "s", $param_username);
                $param_username = htmlspecialchars($username);
                if(mysqli_stmt_execute($stmt)){
                    // Store result
                    mysqli_stmt_store_result($stmt);
                    
                    // Check if username exists, if yes then verify password
                    if(mysqli_stmt_num_rows($stmt) == 1){                    
                        // Bind result variables
                        mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                        if(mysqli_stmt_fetch($stmt)){
                            if(password_verify($password, $hashed_password)){
                                // Password is correct, so start a new session
                                session_start();
                                // Store data in session variables
                                $_SESSION["loggedin"] = true;
                                $_SESSION["id"] = $id;
                                $_SESSION["username"] = $username;
                                header("location: dashboard.html");
                            } else{
                                // Password is not valid, display a generic error message
                                $login_err = "Invalid username or password.";
                            }
                        }
                    } else{
                        // Username doesn't exist, display a generic error message
                        $login_err = "Invalid username or password.";
                    }
                } else{
                    echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later.";
                }
            }
            // Close statement
            mysqli_stmt_close($stmt);
        }
        // Close connection
    mysqli_close($link);
    }
    
    $response = array(
        'user_err' => $username_err,
        'pass_err' => $password_err,
        'login_err' => $login_err
    );

    header('Content-Type: application/json');
    echo json_encode($response);

?>