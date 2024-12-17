package com.growsmart.Controller;

import java.io.IOException;
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

@WebServlet("/upload")
@MultipartConfig  // Enable file uploads
public class ImageUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String weight = request.getParameter("weight");
        String company = request.getParameter("company");
        String uses = request.getParameter("uses");

        try {
            Class.forName(Utility.Driver);
            Connection conn = Utility.fetchConnection();
            String sql = "INSERT INTO images (name, description, price, weight, company, uses, image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, description);
            statement.setDouble(3, price);
            statement.setString(4, weight);
            statement.setString(5, company);
            statement.setString(6, uses);
            
            // Get the image part from the request
            Part filePart = request.getPart("image");
            if (filePart != null && filePart.getSize() > 0) {
                InputStream inputStream = filePart.getInputStream();
                statement.setBlob(7, inputStream);
                int row = statement.executeUpdate();
                if (row > 0) {
                    request.setAttribute("message", "Product uploaded successfully!");
                } else {
                    request.setAttribute("message", "Product upload failed!");
                }
            } else {
                request.setAttribute("message", "No image file uploaded.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "An error occurred: " + e.getMessage());
        }

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
