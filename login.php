<?php include('header.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container" id="login">
        <h1 class="form-title">Login</h1>
        <form id="loginForm" method="post">
            <div class="input-group">
                <input type="email" id="email" name="email" placeholder="Email" required />
                <label for="email">Email</label>
            </div>
            <div class="input-group">
                <input type="password" name="password" id="password" placeholder="Password" required />
                <label for="password">Password</label>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>

        <div class="links">
            <p>Don't Have an Account?</p>
            <a href="register.php">Register</a>
        </div>
    </div>

    <script src="script.js"></script>
</body>

</html>
