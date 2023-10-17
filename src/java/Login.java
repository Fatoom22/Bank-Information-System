import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:\\DataBase\\bank.accdb");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT [user], pass FROM account");
            boolean isValid = false;
            while (rs.next()) {
                if (user.equals(rs.getString("user")) && pass.equals(rs.getString("pass"))) {
                    isValid = true;
                    break;
                }
            }
            if (isValid) {
                out.println("Logged in");
                response.sendRedirect("index.html");
            } else {
                out.println("User or password did not match the database");
            }
            st.close();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            out.println(e.toString());
        }
    }
}