<%-- 
    Document   : withdraw
    Created on : Oct 15, 2023, 11:49:42 AM
    Author     : fatoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Withdraw</title>
    <style>
        body {
            background-color: #f1f9fe;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px;
        }

        .form-container img {
            width: 90%;
            height: auto;
            margin-bottom: 20px;
        }

        .form-container h2 {
            margin-top: 0;
            font-size: 24px;
            text-align: center;
            color: #333333;
        }

        .form-container form {
            margin-top: 20px;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            color: #333333;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 100%;
            padding: 10px;
              background-color:lightblue;
           color: black;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
             background-color: #c7e1ff;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <img src="./img/atm.png" alt="Logo" />
        <h2>Please enter your information</h2>
        <form method="post" action="withdraw1.jsp">
            <label for="ac">Account NO:</label>
            <input type="text" name="ac" id="ac" />

            <label for="amount">Amount withdraw:</label>
            <input type="text" name="amount" id="amount" />
            <br><br>
            <input type="submit" value="Submit" /><br><br>
            <input type="reset" value="Reset" />
        </form>
    </div>
</div>
</body>
</html>
