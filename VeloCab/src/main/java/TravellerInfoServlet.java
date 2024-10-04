import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TravellerInfoServlet")
public class TravellerInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form data
        String pickupAddress = request.getParameter("pickupAddress");
        String dropoffAddress = request.getParameter("dropAddress");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contactNumber");

        // Database connection parameters
        String dbURL = "jdbc:mysql://localhost:3306/velocab";
        String dbUser = "root";
        String dbPass = "1234";

        // SQL query to insert data
        String sql = "INSERT INTO traveller_info (pickup_address, dropoff_address, name, gender, email, contact_number) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // Create a PreparedStatement
            PreparedStatement stmt = conn.prepareStatement(sql);

            // Set the values for the prepared statement
            stmt.setString(1, pickupAddress);
            stmt.setString(2, dropoffAddress);
            stmt.setString(3, name);
            stmt.setString(4, gender);
            stmt.setString(5, email);
            stmt.setString(6, contactNumber);

            // Execute the insert
            int rowsInserted = stmt.executeUpdate();
            
            if (rowsInserted > 0) {
                // Redirect to success page if insertion was successful
                response.sendRedirect("success.jsp");
            }

            // Close the connection
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page on failure
        }
    }
}
