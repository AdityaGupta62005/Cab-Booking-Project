import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


// POJO for Driver
class Driver {
    private int driver_id;
    private String name;
    private String phone;
    private String license_no;
    private String cab_type;
    private int experience;

    public Driver(int driver_id, String name, String phone, String license_no, String cab_type, int experience) {
        this.driver_id = driver_id;
        this.name = name;
        this.phone = phone;
        this.license_no = license_no;
        this.cab_type = cab_type;
        this.experience = experience;
    }

    // Getters
    public int getDriver_id() { return driver_id; }
    public String getName() { return name; }
    public String getPhone() { return phone; }
    public String getLicense_no() { return license_no; }
    public String getCab_type() { return cab_type; }
    public int getExperience() { return experience; }
}

@WebServlet("/DriverServlet")
public class DriverServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/velocab";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "1234";  // Change as per your DB credentials

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get input data from the form
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String license_no = request.getParameter("license_no");
        String cab_type = request.getParameter("cab_type");
        int experience = Integer.parseInt(request.getParameter("experience"));

        // Add the driver data to the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC Driver
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement stmt = conn.createStatement();
            
            // Insert the driver details into the 'drivers' table
            String sql = "INSERT INTO drivers (name, phone, license_no, cab_type, experience) VALUES ('" + name + "', '" + phone + "', '" + license_no + "', '" + cab_type + "', " + experience + ")";
            stmt.executeUpdate(sql);
            
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect back to the DriverServlet (this will invoke the doGet method to show the updated list)
        response.sendRedirect("DriverServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Driver> driverList = new ArrayList<>();
        
        // Fetch driver data from the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC Driver
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM drivers");

            // Add each driver record to the driverList
            while (rs.next()) {
                Driver driver = new Driver(
                    rs.getInt("driver_id"),
                    rs.getString("name"),
                    rs.getString("phone"),
                    rs.getString("license_no"),
                    rs.getString("cab_type"),
                    rs.getInt("experience")
                );
                driverList.add(driver);
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Pass the driverList to the JSP
        request.setAttribute("driverList", driverList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("driverLandingPage.jsp");
        dispatcher.forward(request, response);
    }
}
