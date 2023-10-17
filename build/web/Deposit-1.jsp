<%--
    Document   : deposit
    Created on : Oct 15, 2023, 11:37:16 AM
    Author     : fatoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Deposit</title>
    <style>
        body {
            background-color: #f1f9fe;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .form-container {
            background-color: #f2f2f2;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 30%;
        }

        .form-container img {
            width: 300px;
            height: 250px;
        }

        .form-container h2 {
            margin-top: 0;
            font-size: 24px;
            text-align: center;
            color: #333333;
        }

        .form-container table {
            margin: 0 auto;
            width: 100%;
            border-collapse: collapse;
        }

        .form-container th {
            background-color: #e1ecf4;
            padding: 10px;
            text-align: center;
            color: #333;
            border: none;
        }

        .form-container td {
            padding: 5px;
        }

        .form-container input[type="text"] {
            width: 90%;
            padding: 5px;
        }

        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            padding: 5px 10px;
            background-color: lightblue;
            color: black;
            border: none;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background-color: #c7e1ff;
        }
    </style>
</head>
<body>
<div class="form-container">
    <form method="post" action="Deposit-2.jsp">
        <img src="./img/deposit.png" alt="Logo" />
        <h2>Deposit information</h2>
        <table>
            <tr>
                <th colspan="2">Please enter your information</th>
            </tr>
            <tr>
                <td>Account NO:</td>
                <td><input type="text" name="ac"></td>
            </tr>
            <tr>
                <td>Amount deposit:</td>
                <td><input type="text" name="amount"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit" />
                    <input type="reset" value="Reset" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>