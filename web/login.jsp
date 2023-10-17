<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <style>
    body {
      background-color: #f7f7f7;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .container {
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      overflow: hidden;
      width: 400px;
      max-width: 90%;
    }

    .header {
     
      color:black;
      padding: 20px;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
        background-color:lightblue;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }

    .form-group {
      padding: 20px;
    }

    .form-group label {
      font-weight: bold;
      display: block;
      margin-bottom: 10px;
    }

    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 6px;
      border: 1px solid #ccc;
      box-sizing: border-box;
      margin-bottom: 15px;
      font-size: 16px;
    }

    .form-group input[type="text"]:focus,
    .form-group input[type="password"]:focus {
      outline: none;
      border-color: #007bff;
      box-shadow: 0 2px 4px rgba(0, 123, 255, 0.2);
    }

    .form-group .btn {
           text-align: center;
             justify-content: center;
       display: inline-block;
      margin: 0 10px;
      padding: 10px 20px;
      text-decoration: none;
      color: #333333;
      font-weight: bold;
      border-radius: 6px;
      background-color: lightblue;
      transition: background 0.4s ease;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    
        display: flex;
      justify-content: center;
    }

    .form-group .btn:hover {
      background-color: #c7e1ff;
         text-align: center;
        display: flex;
    }

    .register-link {
      text-align: center;
      margin-top: 20px;
    }

    .register-link a {
      color: #007bff;
      text-decoration: none;
      transition: color 0.3s ease;
    }

    .register-link a:hover {
      color: #0056b3;
    }
  </style>
</head>
<body>
    <form method="post" action="Login">
  <div class="container">
    <div class="header">
      Login
    </div>
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" id="username" name="user" placeholder="Enter your username" required>
      <label for="password">Password:</label>
      <input type="password" id="password" name="pass" placeholder="Enter your password" required>
      <button type="submit" class="btn" style="text-align: center;">Login</button>
    </div>
    <div class="register-link">
      <a href="CreateNewAccount-1.jsp">Create New User Account?</a>
    </div>
  </div>
    </form>
</body>
</html>
