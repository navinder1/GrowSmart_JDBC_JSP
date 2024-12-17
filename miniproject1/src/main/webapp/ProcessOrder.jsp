<%@ page import="java.sql.*, java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="com.growsmart.entity.Utility" %>
<%
    // Check if the user is logged in by verifying if userEmail exists in the session
    String userEmail = (String) session.getAttribute("userEmail");
    if (userEmail != null && !userEmail.isEmpty()) {
        // If logged in, proceed with the order processing
        String productId = request.getParameter("productId");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String paymentType = request.getParameter("paymentType");  // Payment type (COD or online)

        // Variables to store product details
        String productName = "";
        String description = "";
        double price = 0.0;
        String weight = "";
        String company = "";
        String image = "";

        try {
            Class.forName(Utility.Driver);
            Connection conn = Utility.fetchConnection();

            // Fetch product details
            String productSql = "SELECT name, description, price, weight, company, image FROM products WHERE id = ?";
            PreparedStatement productStmt = conn.prepareStatement(productSql);
            productStmt.setInt(1, Integer.parseInt(productId));
            ResultSet productResult = productStmt.executeQuery();

            if (productResult.next()) {
                productName = productResult.getString("name");
                description = productResult.getString("description");
                price = productResult.getDouble("price");
                weight = productResult.getString("weight");
                company = productResult.getString("company");
                image = productResult.getString("image");
            }

            // Insert order into orders table, using userEmail to identify the user
            String orderSql = "INSERT INTO orders (user_email, product_id, product_name, description, price, weight, company, quantity, total_price, payment_type, order_date) " +
                              "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement orderStmt = conn.prepareStatement(orderSql);
            orderStmt.setString(1, userEmail);  // Use userEmail to identify the logged-in user
            orderStmt.setInt(2, Integer.parseInt(productId));
            orderStmt.setString(3, productName);
            orderStmt.setString(4, description);
            orderStmt.setDouble(5, price);
            orderStmt.setString(6, weight);
            orderStmt.setString(7, company);
            orderStmt.setInt(8, quantity);
            orderStmt.setDouble(9, totalPrice);
            orderStmt.setString(10, paymentType);
            orderStmt.setTimestamp(11, new java.sql.Timestamp(new Date().getTime()));

            int rowsInserted = orderStmt.executeUpdate();
            if (rowsInserted > 0) {
                if ("COD".equalsIgnoreCase(paymentType)) {
                    out.println("<p>Order placed successfully with Cash on Delivery! Redirecting to your order page...</p>");
                } else {
                    out.println("<p>Order placed successfully! Redirecting to your order page...</p>");
                }
                response.setHeader("Refresh", "3; URL=OrderPage.jsp"); // Redirect to the order page after 3 seconds
            } else {
                out.println("<p>Error placing order. Please try again.</p>");
            }

            productResult.close();
            productStmt.close();
            orderStmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error processing order. Please try again later.</p>");
        }
    } else {
        out.println("<p>Please log in to place an order.</p>");
    }
%>
