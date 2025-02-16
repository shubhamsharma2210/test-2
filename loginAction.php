<?php
include('dbConn.php');
session_start();

header("Content-Type: application/json");


$data = json_decode(file_get_contents("php://input"), true);

if (!$data) {
    echo json_encode(["success" => false, "message" => "Invalid request."]);
    exit;
}

$email = $data['email'];
$password = md5($data['password']);

$query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $_SESSION['fullName'] = $row['fullName'];
    $_SESSION['email'] = $row['email'];
    

    // $_SESSION['user_id'] = $row['id'];
    echo json_encode(['success' => true, 'redirect' => 'index.php']);
    
} else {
    // Login failed
    echo json_encode(['success' => false, 'message' => 'Invalid email or password.']);
}
?>




