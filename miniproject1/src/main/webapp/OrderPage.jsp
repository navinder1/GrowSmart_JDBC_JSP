<%@ page import="java.sql.*, java.util.Date, java.text.SimpleDateFormat, java.util.Calendar" %>
<%@ page import="com.growsmart.entity.Utility" %>
<%
    // Get the order ID from the request parameter
    String orderId = request.getParameter("orderId");

    // Variables to store order and product details
    String userEmail = "";
    int productId = 0;
    String productName = "";
    String description = "";
    double price = 0.0;
    String weight = "";
    String company = "";
    String productImage = "";
    int quantity = 0;
    double totalPrice = 0.0;
    String paymentType = "";
    Date orderDate = null;
    String orderStatus = "";
    String shippingAddress = "";
    Date deliveryDate = null;

    try {
        Class.forName(Utility.Driver);
        Connection conn = Utility.fetchConnection();

        // SQL query to fetch order and product details
        String sql = "SELECT o.id AS order_id, o.user_email, o.product_id, o.quantity, o.total_price, o.payment_type, "
                   + "o.order_date, o.order_status, o.shipping_address, p.name AS product_name, p.description, "
                   + "p.price, p.weight, p.company, p.image "
                   + "FROM orders o JOIN products p ON o.product_id = p.id WHERE o.id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, Integer.parseInt(orderId));
        ResultSet rs = stmt.executeQuery();

        // Process the result set
        if (rs.next()) {
            userEmail = rs.getString("user_email");
            productId = rs.getInt("product_id");
            productName = rs.getString("product_name");
            description = rs.getString("description");
            price = rs.getDouble("price");
            weight = rs.getString("weight");
            company = rs.getString("company");
            productImage = rs.getString("image"); // Assuming this is a URL or path to the image
            quantity = rs.getInt("quantity");
            totalPrice = rs.getDouble("total_price");
            paymentType = rs.getString("payment_type");
            orderDate = rs.getTimestamp("order_date");
            orderStatus = rs.getString("order_status");
            shippingAddress = rs.getString("shipping_address");

            // Calculate delivery date by adding 60 minutes to orderDate if orderDate is not null
            if (orderDate != null) {
                Calendar cal = Calendar.getInstance();
                cal.setTime(orderDate);
                cal.add(Calendar.MINUTE, 60); // Adding 60 minutes
                deliveryDate = cal.getTime();
            }
        }

        // Close resources
        rs.close();
        stmt.close();
        conn.close();

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error fetching order details. Please try again later.</p>");
    }
%>

<!-- HTML to display order and product details -->
<html>
<head>
    <title>Order Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your styles -->
</head>
<body>
    <h1>Order Details</h1>
    <table>
        <tr>
            <th>Order ID</th>
            <td><%= orderId %></td>
        </tr>
        <tr>
            <th>User Email</th>
            <td><%= userEmail %></td>
        </tr>
        <tr>
            <th>Product Name</th>
            <td><%= productName %></td>
        </tr>
        <tr>
            <th>Description</th>
            <td><%= description %></td>
        </tr>
        <tr>
            <th>Price</th>
            <td><%= price %></td>
        </tr>
        <tr>
            <th>Weight</th>
            <td><%= weight %></td>
        </tr>
        <tr>
            <th>Company</th>
            <td><%= company %></td>
        </tr>
        <tr>
            <th>Product Image</th>
            <td><img src="<%= productImage %>" alt="<%= productName %>" width="100" height="100"></td>
        </tr>
        <tr>
            <th>Quantity</th>
            <td><%= quantity %></td>
        </tr>
        <tr>
            <th>Total Price</th>
            <td><%= totalPrice %></td>
        </tr>
        <tr>
            <th>Payment Type</th>
            <td><%= paymentType %></td>
        </tr>
        <tr>
            <th>Order Date</th>
            <td><%= orderDate != null ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(orderDate) : "N/A" %></td>
        </tr>
        <tr>
            <th>Order Status</th>
            <td><%= orderStatus %></td>
        </tr>
        <tr>
            <th>Shipping Address</th>
            <td><%= shippingAddress %></td>
        </tr>
        <tr>
            <th>Delivery Date</th>
            <td><%= deliveryDate != null ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(deliveryDate) : "N/A" %></td>
        </tr>
    </table>
</body>
</html>
