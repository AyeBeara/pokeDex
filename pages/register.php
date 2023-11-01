<?
require_once "config.php";

$$username = $password = $confirm_password = $fname = $lname = $email = '';
$user_err = $pass_err = $confirm_err = $fname_err = $lname_err = $email_err = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (empty(trim($_POST["email"]))) {
        $user_err = "Please enter an email address";
    } elseif (!preg_match("/^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$/", trim($_POST["email"]))) {
        $user_err = "Please ender a valid email address";
    } else {
        $sql = "SELECT Username FROM accounts WHERE Username = ?";

        if($stmt = $link->prepare($sql)) {
            $stmt->bind_param("s", $query_uname);
            $query_uname = trim($_POST["email"]);

            if ($stmt->execute()) {
                $stmt->store_result();

                if ($stmt->num_rows() == 1) {
                    $user_err = "This email address already has an account";
                } else {
                    $email = htmlspecialchars(trim($_POST["email"]));
                }
            } else {
                echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later";
            }
            $stmt->close();
        }
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
        if (empty($pass_err) && ($pass != $confirm_password)) {
            $confirm_err = "Passwords did not match";
        }
    }

    if (empty($user_err) && empty($pass_err) && empty($confirm_err)) {

        $sql = "INSERT INTO users (email, PasswordHash) VALUES (?, ?)";

        if ($stmt = $link->prepare($sql)) {
            $stmt->bind_param("ss", $query_uname, $query_pass);
            $query_uname = $username;
            $query_pass = password_hash($password, PASSWORD_DEFAULT);

            if ($stmt->execute()) {
                header("location: index.html");
            } else {
                echo "Oopsy-woopsy! We had a fucky-wucky problem, pwease check back later";
            }

            $stmt->close();
        }
    }

    $link->close();
}
?>