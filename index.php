<?php
session_start();
include('header.php');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if (isset($_SESSION['fullName']) && isset($_SESSION['email'])) {
                echo "<tr>";
                echo "<td>" . $_SESSION['fullName'] . "</td>";
                echo "<td>" . $_SESSION['email'] . "</td>";
                echo "</tr>";
            } else {
                echo "<tr><td colspan='2'>No user data available.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>
</body>
</html>
