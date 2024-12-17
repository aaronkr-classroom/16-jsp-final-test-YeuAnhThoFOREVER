<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            width: 60%;
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
    <script>
        function validateForm() {
            const username = document.forms["registerForm"]["username"].value;
            const email = document.forms["registerForm"]["email"].value;
            const password = document.forms["registerForm"]["password"].value;

            const usernamePattern = /^[a-zA-Z0-9]{5,}$/;
            const emailPattern = /^[^@\s]+@[^@\s]+\.[^@\s]+$/;
            const passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;

            if (!usernamePattern.test(username)) {
                alert("Username must be at least 5 characters and contain only letters or numbers.");
                return false;
            }
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }
            if (!passwordPattern.test(password)) {
                alert("Password must be at least 8 characters and contain both letters and numbers.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="image-container">
            <img src="https://c4.wallpaperflare.com/wallpaper/248/278/419/detroit-become-human-chloe-detroit-become-human-blonde-cgi-wallpaper-preview.jpg" alt="Chloe Image">
        </div>
        <h2>User Registration</h2>
        <form name="registerForm" method="post" action="thanks.jsp" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</body>
</html>
