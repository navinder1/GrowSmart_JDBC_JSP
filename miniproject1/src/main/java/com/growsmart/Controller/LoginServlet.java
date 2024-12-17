package com.growsmart.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.growsmart.entity.Utility;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve email, password, and optional redirect URL from the request
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String redirectUrl = request.getParameter("redirect");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName(Utility.Driver);
            Connection connection = Utility.fetchConnection();

            // SQL query to validate the user
            String sql = "SELECT * FROM users12 WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Login successful, set session attribute
            	
            	HttpSession session1 = request.getSession();
                session1.setAttribute("userEmail", email);
                HttpSession session = request.getSession();
                session.setAttribute("user", resultSet.getString("username"));

                // Redirect to specified URL or default to home page
                if (redirectUrl != null && !redirectUrl.isEmpty()) {
                    response.sendRedirect(redirectUrl);
                } else {
                    response.sendRedirect("home.jsp");
                }
            } else {
                out.println("<h3>Invalid email or password. Please try again.</h3>");
            }

            statement.close();
            connection.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<h3>Database Error: Unable to authenticate user.</h3>");
        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect GET requests to POST method for form processing
        doPost(request, response);
    }
}
