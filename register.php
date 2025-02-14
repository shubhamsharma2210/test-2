<?php 
include('header.php'); 
?>

<div class="container" id="register">
    <h1 class="form-title">Register</h1>
    <form id="registerForm">
        <div class="input-group">
            <input type="text" name="fullName" id="fullName" placeholder="Full Name" required />
            <label for="fullName">Full Name</label>
        </div>

        <div class="input-group">
            <input type="email" id="email" name="email" placeholder="Email" required />
            <label for="email">Email</label>
        </div>

        <div class="input-group">
            <input type="password" name="password" id="password" placeholder="Password" required />
            <label for="password">Password</label>
        </div>

        <div class="input-group">
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" required />
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
