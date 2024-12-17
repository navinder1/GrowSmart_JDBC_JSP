package com.growsmart.Controller;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.growsmart.entity.Utility;

@MultipartConfig
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, java.io.IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String weight = request.getParameter("weight");
        String company = request.getParameter("company");
        String uses = request.getParameter("pr");
        String category=request.getParameter("category");
        
        Part filePart = request.getPart("image");
        InputStream imageInputStream = filePart.getInputStream();

        try {
            // Database connection
            Class.forName(Utility.Driver);
            Connection conn = Utility.fetchConnection();
            String sql = "INSERT INTO images (name, description, price, image, weight, company, uses,category) VALUES (?,?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, description);
            pstmt.setBigDecimal(3, new java.math.BigDecimal(price));
            pstmt.setBlob(4, imageInputStream);
            pstmt.setString(5, weight);
            pstmt.setString(6, company);
            pstmt.setString(7, uses);
            pstmt.setString(8, category);

            int row = pstmt.executeUpdate();
            if (row > 0) {
            	response.sendRedirect("home.jsp");
            } else {
                response.getWriter().println("Failed to upload product.");
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred.");
        }
    }
}
