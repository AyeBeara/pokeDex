<?php
require_once "config.php";

$username = $password = $confirm_password = $fname = $lname = $email = '';
$user_err = $pass_err = $confirm_err = $fname_err = $lname_err = $email_err = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter an email address";
    } elseif (!preg_match("/^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$/", trim($_POST["email"]))) {
        $email_err = "Please ender a valid email address";
    } else {
        $sql = "SELECT email FROM accounts WHERE email = ?";

        if ($stmt = $link->prepare($sql)) {
            $stmt->bind_param("s", $query_email);
            $query_email = htmlspecialchars(trim($_POST["email"]));

            if ($stmt->execute()) {
                $stmt->store_result();

                if ($stmt->num_rows() == 1) {
                    $email_err = "This email address already has an account";
                } else {
                    $email = htmlspecialchars(trim($_POST["email"]));
                }
            } else {
                /* DO NOT FORGET TO CHANGE THIS */
                echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later";
            }
            $stmt->close();
        }
    }

    if (empty(trim($_POST["username"]))) {
        $user_err = "Please enter a username";
    } elseif (!preg_match("/^[A-Za-z0-9_!$@-]+$/", trim($_POST["username"]))) {
        $user_err = "Please enter a valid username";
    } else {
        $sql = "SELECT Username FROM accounts WHERE Username = ?";

        if ($stmt = $link->prepare($sql)) {
            $stmt->bind_param("s", $query_user);
            $query_user = htmlspecialchars(trim($_POST["username"]));

            if ($stmt->execute()) {
                $stmt->store_result();

                if ($stmt->num_rows() == 1) {
                    $user_err = "This username is already taken.";
                } else {
                    $username = htmlspecialchars(trim($_POST["username"]));
                }
            } else {
                /* DO NOT FORGET TO CHANGE THIS */
                echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later";
            }
            $stmt->close();
        }
    }

    if (empty(trim($_POST["fname"]))) {
        $fname_err = "Please enter a first name";
    } elseif (!preg_match("/^([ À-ǿa-zA-Z'\-])+$/", trim($_POST["fname"]))) {
        $fname_err = "Please enter a valid first name";
    } else {
        $fname = htmlspecialchars(trim($_POST["fname"]));
    }

    if (empty(trim($_POST["lname"]))) {
        $lname_err = "Please enter a last name";
    } elseif (!preg_match("/^([ À-ǿa-zA-Z'\-])+$/", trim($_POST["lname"]))) {
        $lname_err = "Please enter a valid last name";
    } else {
        $lname = htmlspecialchars(trim($_POST["lname"]));
    }

    if (empty(trim($_POST["password"]))) {
        $pass_err = "Please enter a password";
    } elseif (strlen(trim($_POST["password"])) < 8) {
        $pas_err = "Password must be at least 8 characters long";
    } else {
        $password = htmlspecialchars(trim($_POST["password"]));
    }

    if (empty(trim($_POST["confirm_pass"]))) {
        $confirm_err = "Please confirm password";
    } else {
        $confirm_password = htmlspecialchars(trim($_POST["confirm_pass"]));
        if (empty($pass_err) && ($password != $confirm_password)) {
            $confirm_err = "Passwords did not match";
        }
    }

    $errors = array($user_err, $pass_err, $confirm_err, $email_err, $fname_err, $lname_err);

    if (empty($user_err) && empty($pass_err) && empty($confirm_err) && empty($email_err) && empty($fname_err) && empty($lname_err)) {

        $sql = "INSERT INTO accounts (username, fname, lname, email, PasswordHash) VALUES (?, ?, ?, ?, ?)";

        if ($stmt = $link->prepare($sql)) {
            $stmt->bind_param("sssss", $query_user, $query_fname, $query_lname, $query_email, $query_pass);
            $query_user = $username;
            $query_fname = $fname;
            $query_lname = $lname;
            $query_email = $email;
            $query_pass = password_hash($password, PASSWORD_DEFAULT);

            if ($stmt->execute()) {
                echo "./index.html";
            } else {
                echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later";
            }

            $stmt->close();
        }
    }

    $link->close();
}

foreach ($errors as $error) {
    echo $error;
    return;
}
