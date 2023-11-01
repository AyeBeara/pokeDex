<?php
function load_db_pass() {
    $pwd_file = fopen("C:\\xampp\\pokedex\\password.txt", "r");
    $pass = fread($pwd_file,filesize("C:\\xampp\\pokedex\\password.txt"));
    fclose($pwd_file);
    
    return $pass;
}

$link = new mysqli("localhost", "xampp", load_db_pass(), "pokedex");
if ($link->connect_error) {
    die("Connection failed: " . $link->connect_error);
}
?>