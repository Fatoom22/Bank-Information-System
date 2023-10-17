import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validate {
    public static boolean checkUser(String user, String pass) {
        boolean isValid = false;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            con = DriverManager.getConnection("jdbc:ucanaccess://C:\\DataBase\\bank.accdb");
            ps = con.prepareStatement("SELECT * FROM account WHERE user=? AND pass=?");
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            isValid = rs.next();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isValid;
    }
}