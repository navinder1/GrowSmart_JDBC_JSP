package com.growsmart.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.growsmart.entity.Utility;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the registration form
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        // Set the response content type to HTML
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Check if the form fields are empty and validate data
        if (username == null || email == null || phone == null || password == null ||
            username.isEmpty() || email.isEmpty() || phone.isEmpty() || password.isEmpty()) {
            out.println("<h3>Error: Please fill out all fields.</h3>");
            return; // Exit if any field is missing
        }

        try {
            Class.forName(Utility.Driver);

            // Fetch a database connection (from Utility class)
            Connection connection = Utility.fetchConnection();

            // SQL query to insert user data into the database
            String sql = "INSERT INTO users12 (username, email, contact, password) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);

            // Set parameters for the SQL query
            statement.setString(1, username);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, password); // In a real application, hash the password

            // Execute the SQL query
            int result = statement.executeUpdate();

            // Check if the data is inserted successfully
            if (result > 0) {
                // Show success message with JavaScript pop-up and redirect to the home page
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration Successful!');");
                out.println("window.location.href = 'home.jsp';"); // Replace 'home.jsp' with your actual home page URL
                out.println("</script>");
            } else {
                out.println("<h3>Registration Failed. Please try again.</h3>");
            }

            // Close the PreparedStatement and the connection
            statement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h3>Database Error: Unable to register user.</h3>");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<h3>Error: Database driver not found.</h3>");
        } finally {
            out.close(); // Close the PrintWriter
        }
    }
}
