<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 350px;
            text-align: center;
        }
        .login-container img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-container input[type="submit"] {
            padding: 10px;
            background-color: #5cb85c;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .login-container input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        @media (max-width: 480px) {
            .login-container {
                padding: 15px;
            }
            .login-container h2 {
                font-size: 20px;
            }
            .login-container img {
                width: 70px;
                height: 70px;
            }
            .login-container input[type="text"],
            .login-container input[type="password"],
            .login-container input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="https://res.cloudinary.com/dtrmjjphv/image/upload/v1736795707/office-icon_pwga20.png" alt="Admin Avatar">
        <h2>Welcome,Admin</h2>
        <form action="admin" method="post">
            <input type="text" name="username"  id="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
    