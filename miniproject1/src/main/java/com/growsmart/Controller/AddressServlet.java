package com.growsmart.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.growsmart.entity.Utility;

@WebServlet("/address")
public class AddressServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("userEmail");

        if (email == null) {
            response.getWriter().println("{\"status\": \"error\", \"message\": \"User not logged in.\"}");
            return;
        }

        String addressType = request.getParameter("addressType");
        String address = null;
        String column = null;

        if ("home".equals(addressType)) {
            address = "Door No: " + request.getParameter("homeDoorNo") +
                      ", Street: " + request.getParameter("homeStreet") +
                      ", Village: " + request.getParameter("homeVillage") +
                      ", Pincode: " + request.getParameter("homePincode");
            column = "home_address";
        } else if ("office".equals(addressType)) {
            address = "Office Name: " + request.getParameter("officeName") +
                      ", Door No: " + request.getParameter("officeDoorNo") +
                      ", Street: " + request.getParameter("officeStreet") +
                      ", City: " + request.getParameter("officeCity") +
                      ", Pincode: " + request.getParameter("officePincode");
            column = "office_address";
        } else if ("other".equals(addressType)) {
            address = "Description: " + request.getParameter("otherDescription") +
                      ", Door No: " + request.getParameter("otherDoorNo") +
                      ", Street: " + request.getParameter("otherStreet") +
                      ", City: " + request.getParameter("otherCity") +
                      ", Pincode: " + request.getParameter("otherPincode");
            column = "other_address";
        }

        response.setContentType("application/json");
        try {
            Class.forName(Utility.Driver);
            Connection conn = Utility.fetchConnection();

            String sql = "UPDATE users12 SET " + column + " = ? WHERE email = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, address);
            statement.setString(2, email);

            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                response.getWriter().println("{\"status\": \"success\", \"message\": \"" + addressType + " address updated successfully!\"}");
            } else {
                response.getWriter().println("{\"status\": \"error\", \"message\": \"Failed to update address.\"}");
            }

            statement.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("{\"status\": \"error\", \"message\": \"Error: Unable to update address.\"}");
        }
    }
}
