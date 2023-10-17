<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Withdraw</title>
    <style>
        body {
            background-color: #f2f8ff;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        
        .container {
            background-color: #e8f0fe;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            color: #003399;
            margin-bottom: 20px;
        }
        
        table {
            margin: 0 auto;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        th, td {
            padding: 10px;
            border: 1px solid #003399;
        }
        
        th {
            background-color: #003399;
            color: #fff;
        }
        
        a {
            color: #003399;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <% 
        String a = request.getParameter("ac");
        String amoun = request.getParameter("amount");
        int accoun = Integer.parseInt(amoun);
     
        try { 
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\DataBase\\bank.accdb");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM account WHERE accountNO=?");
            ps.setString(1, a);
            ResultSet rs = ps.executeQuery();
            int dataamount = 0;
            
            if (rs.next()) {
                dataamount = rs.getInt("amount") - accoun;
            }
            
            PreparedStatement ps1 = con.prepareStatement("UPDATE account SET amount=? WHERE accountNO=?");
            ps1.setInt(1, dataamount);
            ps1.setString(2, a);
            int i = ps1.executeUpdate(); 
            
            if (i != 0) {
                PreparedStatement ps2 = con.prepareStatement("SELECT * FROM account WHERE accountNO=?");
                ps2.setString(1, a);
                ResultSet rs2 = ps2.executeQuery();
                
                out.print("<h1><a href='index.html'>Home</a></h1>");
                out.print("<table>");
                out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
                
                while (rs2.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs2.getString("accountNO") + "</td>");
                    out.print("<td>" + rs2.getString("user") + "</td>");
                    out.print("<td>" + rs2.getInt("amount") + "</td>");
                    out.print("<td>" + rs2.getString("address") + "</td>");
                    out.print("<td>" + rs2.getString("phone") + "</td>");
                    out.print("</tr>");
                }
                
                out.print("</table>");
                
                rs2.close();
                ps2.close();
            } else {
                response.sendRedirect("withdraw.jsp?msg=Please try again!!!");
            }
            
            rs.close();
            ps.close();
            con.close();
        } catch(Exception ex) { 
            out.println(ex);
        }
    %>
</div>
</body>
</html>