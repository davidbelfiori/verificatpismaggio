<?php
$server = "localhost";
$user = "root";
$pass = "root";
$database = "tpist";

$conn = mysqli_connect($server, $user, $pass, $database);


//test della connsesione con il db
if (!$conn) {
    die("<script>alert('Connection Failed.')</script>");
}
