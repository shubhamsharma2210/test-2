document.addEventListener("DOMContentLoaded", function () {
  const registerForm = document.getElementById("registerForm");
  const loginForm = document.getElementById("loginForm");

  registerForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const fullName = document.getElementById("fullName").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const confirmPassword = document
      .getElementById("confirmPassword")
      .value.trim();

    if (!validateForm(fullName, email, password, confirmPassword)) return;

    const formData = {
      fullName,
      email,
      password,
      confirmPassword,
    };

    try {
      const response = await fetch("action.php", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(formData),
      });
      console.log(response);

      const result = await response.json();
      console.log(result)
     

      if (result.success) {
          window.location.href = "login.php";
      }
    } catch (error) {
      console.error("Error:", error);
    //   alert("An error occurred. Please try again.");
    }
  });

  function validateForm(fullName, email, password, confirmPassword) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    const passwordPattern =
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;

    if (!fullName) return alert("Full Name cannot be empty."), false;
    if (!emailPattern.test(email))
      return alert("Please enter a valid email."), false;
    if (!passwordPattern.test(password))
      return (
        alert(
          "Password must contain at least 6 characters, including uppercase, lowercase, number, and special character."
        ),
        false
      );
    if (password !== confirmPassword)
      return alert("Passwords do not match."), false;

    return true;
  }
// login form

});







document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");
  
    if (loginForm) {
      loginForm.addEventListener("submit", async function (e) {
        e.preventDefault();
  
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value.trim();
  
        try {
          const response = await fetch("loginAction.php", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ email, password }),
          });
          console.log(response);
  
          const result = await response.json();
          console.log(result);
  
          if (result.success) {
            window.location.href = 'index.php';
          } else {
            alert(result.message);
          }
        } catch (error) {
          console.error("Error:", error);
        
        }
      });
    }
  });
  