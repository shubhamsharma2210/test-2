// header script

const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');

hamburger.addEventListener('click', () => {
    navLinks.classList.toggle('nav-active');
});

// regsiter script


document.addEventListener("DOMContentLoaded", function () {
  const registerForm = document.getElementById("registerForm");
  const errorMessagesDiv = document.getElementById("errorMessages");


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
      const response = await fetch("Registeraction.php", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(formData),
      });
     

      const result = await response.json();
  
     

      if (result.success) {
          window.location.href = "login.php";
      }
    } catch (error) {
   
      displayError("An error occurred. Please try again.",error);
    }
  });

  function validateForm(fullName, email, password, confirmPassword) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    const passwordPattern =
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;

    if (!fullName) return displayError("Full Name cannot be empty."), false;
    if (!emailPattern.test(email))
      return displayError("Please enter a valid email."), false;
    if (!passwordPattern.test(password))
      return (
        displayError(
          "Password must contain at least 6 characters, including uppercase, lowercase, number, and special character."
        ),
        false
      );
    if (password !== confirmPassword)
      return displayError("Passwords do not match."), false;

    return true;
  }
// display error

// login form
function displayError(message) {
  errorMessagesDiv.innerHTML = message;
  errorMessagesDiv.style.color = "red";
}

});



// Login script



document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");
    const errorMessagesDiv = document.getElementById("errorMessages");

  
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
            displayError(result.message);
          }
        } catch (error) {
          displayError("Error:", error);
        
        }
      });
    }
    function displayError(message) {
      errorMessagesDiv.innerHTML = message;
      errorMessagesDiv.style.color = "red";
    }
  });
  