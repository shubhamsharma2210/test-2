<?php
include('dbConn.php');

header("Content-Type: application/json");

// Read JSON input
$data = json_decode(file_get_contents("php://input"), true);

if (!$data) {
    echo json_encode(["success" => false, "message" => "Invalid request."]);
    exit;
}

$fullName =  $data['fullName'];
$email = $data['email'];
$password = $data['password'];
$confirmPassword = $data['confirmPassword'];

if ($password !== $confirmPassword) {
    echo json_encode(["success" => false, "message" => "Passwords do not match."]);
    exit;
}

// Hash password before storing
$hashedPassword = md5($password);

// Insert user data into database
$query = "INSERT INTO users (fullName, email, password) VALUES ('$fullName', '$email', '$hashedPassword')";
$result = mysqli_query($conn, $query);

if ($result) {
    echo json_encode(["success" => true, "message" => "Registration successful!"]);
} else {
    echo json_encode(["success" => false, "message" => "Database error: " . mysqli_error($conn)]);
}
?>




