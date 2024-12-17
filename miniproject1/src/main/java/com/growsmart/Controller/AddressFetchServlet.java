// AddressFetchServlet.java
package com.growsmart.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.growsmart.entity.Utility;

@WebServlet("/fetch-addresses")
public class AddressFetchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email"); // Assuming email is stored in session after login
        ArrayList<String> addresses = new ArrayList<>();
        
        try {
            Class.forName(Utility.Driver);
            Connection connection = Utility.fetchConnection();
            
            // Fetch addresses for the logged-in user
            String sql = "SELECT home_address, office_address, other_address FROM users12 WHERE email = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String homeAddress = resultSet.getString("home_address");
                String officeAddress = resultSet.getString("office_address");
                String otherAddress = resultSet.getString("other_address");
                
                if (homeAddress != null) addresses.add(homeAddress);
                if (officeAddress != null) addresses.add(officeAddress);
                if (otherAddress != null) addresses.add(otherAddress);
            }
            
            // Pass the address list to the JSP page
            request.setAttribute("addresses", addresses);
            request.getRequestDispatcher("selectAddress.jsp").forward(request, response);
            
            resultSet.close();
            statement.close();
            connection.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error fetching addresses: " + e.getMessage());
        }
    }
}
