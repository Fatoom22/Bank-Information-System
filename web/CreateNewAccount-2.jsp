<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@page import="java.sql.*"%> 
<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>Create new Account</title> </head>
<body>
<% String X=request.getParameter("accountNO"); 
 String u=request.getParameter("user"); 
 String p=request.getParameter("pass"); 
 String e=request.getParameter("repass"); 
 String a=request.getParameter("amount"); 
 String b=request.getParameter("gender"); 
 String m=request.getParameter("address"); 
 String n=request.getParameter("phone"); 
 try 
 { 
 Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\DataBase\\bank.accdb"); 
/* Passing argument through the 
question mark */ 
PreparedStatement ps=con.prepareStatement("insert into account  values(?,?,?,?,?,?,?,?)") ; 
ps.setString(7,X);
ps.setString(3,u); 
ps.setString(4,p); 
ps.setString(5,e); 
ps.setString(8,a); 
ps.setString(1,b);
ps.setString(2,m); 
ps.setString(6,n);
int i=ps.executeUpdate(); 
/*Set the Update query command */ 
if(i !=0) 
{ 
response.sendRedirect("index.html?msg=Thank You for registering with us !"); 
}
else 
{ 
response.sendRedirect("CreateNewAccount-1.jsp?msg=Insertion Failed!! Please try again!!! "); 
} con.close(); 
 }
 catch(Exception ex) 
 { 
response.sendRedirect("CreateNewAccount-1.jsp?msg=Insertion Failed!! Please try again!!! "); 
 } %> </body> </html>