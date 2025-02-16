<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<?php include('header.php'); ?>

<div class="container" id="register">
    <div style="text-align:center;" id="errorMessages" class="error-messages"></div>
    <h1 class="form-title">Register</h1>
    <form id="registerForm">
        <div class="input-group">
            <input type="text" name="fullName" id="fullName" placeholder="Full Name"  />
            <label for="fullName">Full Name</label>
        </div>

        <div class="input-group">
            <input type="text" id="email" name="email" placeholder="Email"  />
            <label for="email">Email</label>
        </div>

        <div class="input-group">
            <input type="password" name="password" id="password" placeholder="Password"  />
            <label for="password">Password</label>
        </div>

        <div class="input-group">
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password"  />
            <label for="confirmPassword">Confirm Password</label>
        </div>

        <button type="submit" class="btn">Register</button>
    </form>

    <div class="links">
        <p>Already Have an Account?</p>
        <a href="login.php">Login</a>
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
