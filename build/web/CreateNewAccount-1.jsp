<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Page</title>
    <style>
        body {
            background-color: #f1f9fe;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            margin: 0 auto;
            background-color: #fff;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        th {
            background-color: #e1ecf4;
            padding: 10px;
            color: #333;
        }

        td {
            padding: 5px;
        }

        img {
            width: 600px;
            height: 200px;
        }

        input[type="text"],
        input[type="password"] {
            width: 200px;
            padding: 5px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 5px 10px;
            background-color:lightblue;
   color: black;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
           background-color: #c7e1ff;
        }
    </style>
</head>

<body>
    <center>
        
<form action="CreateNewAccount-2.jsp" >
        <h1>Create New Account</h1><br>
        <table>
            <tr>
                <th colspan="2"><img src="./img/account_1.png" width="600" height="200" alt="" border="0" /></th>
            </tr>
            <tr>
                <td>ACCOUNT NO:</td>
                <td><input type="text" name="accountNO" /></td>
            </tr>
            <tr>
                <td>USER NAME:</td>
                <td><input type="text" name="user" /></td>
            </tr>
            <tr>
                <td>PASSWORD:</td>
                <td><input type="password" name="pass" /></td>
            </tr>
            <tr>
                <td>RE-PASSWORD:</td>
                <td><input type="password" name="repass" /></td>
            </tr>
            <tr>
                <td>AMOUNT:</td>
                <td><input type="text" name="amount" /></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <input type="radio" name="gender" value="Male"> Male
                    <input type="radio" name="gender" value="Female"> Female
                </td>
            </tr>
            <tr>
                <td>ADDRESS:</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td>PHONE:</td>
                <td><input type="text" name="phone" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Submit" />
                    <input type="reset" value="Clear" />
                </td>
            </tr>
        </table>
</form>
    </center>
</body>
</html>