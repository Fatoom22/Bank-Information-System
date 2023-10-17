<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Balance</title>
    <style>
        body {
            background-color: #f2f7ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #e1f0ff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            margin-top: 0;
        }

        a {
            text-decoration: none;
            color: #000;
        }
    </style>
</head>
<body>
<div class="container">
    <% 
    String a = request.getParameter("ac");

    try {
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\DataBase\\bank.accdb");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM account WHERE accountNO='" + a + "'");
        ResultSet rs = ps.executeQuery();
        out.print("<h1><a href='index.html'>Home</a></h1>");
        out.print("<table>");
        out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
        while (rs.next()) {
            out.print("<tr>");
            out.print("<td>" + rs.getString(7) + "</td>");
            out.print("<td>" + rs.getString(3) + "</td>");
            out.print("<td>" + rs.getInt(8) + "</td>");
            out.print("<td>" + rs.getString(2) + "</td>");
            out.print("<td>" + rs.getString(6) + "</td>");
            out.print("</tr>");
        }
        out.print("</table>");
    } catch (Exception ex) {
        out.println(ex);
    }
    %>
</div>
</body>
</html>