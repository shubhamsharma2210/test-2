<?php
$hostname = 'localhost';
$username = "root";
$password = "";
$database = "test-2";


$conn = mysqli_connect($hostname, $username, $password, $database);
if (!$conn) {
    die("Database are not connected successfully" . mysqli_connect_error());
}
