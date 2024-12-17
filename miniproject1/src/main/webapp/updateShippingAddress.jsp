<%-- <%@ page import="java.sql.*" %>
<%@ page import="com.growsmart.entity.Utility" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
      /* Add your styles here */
    </style>
</head>
<body>
    <header>
        <!-- Add header content here -->
    </header>

    <div class="container">
        <div class="left-side">
            <div class="product">
                <%
                    String productId = request.getParameter("id");
                    boolean isLoggedIn = session.getAttribute("user") != null;

                    if (productId != null) {
                        try {
                            Class.forName(Utility.Driver);
                            Connection conn = Utility.fetchConnection();
                            String sql = "SELECT name, description, price, weight, company, uses FROM images WHERE id = ?";
                            PreparedStatement statement = conn.prepareStatement(sql);
                            statement.setInt(1, Integer.parseInt(productId));
                            ResultSet resultSet = statement.executeQuery();

                            if (resultSet.next()) {
                                String name = resultSet.getString("name");
                                String description = resultSet.getString("description");
                                double price = resultSet.getDouble("price");
                                String weight = resultSet.getString("weight");
                                String company = resultSet.getString("company");
                                String uses = resultSet.getString("uses");
                %>

                <h1><%= name %></h1>
                <img src="fetch?id=<%= productId %>" alt="<%= name %>" width="300" height="300">
                <p><strong>Description:</strong> <%= description %></p>
                <p><strong>Price:</strong> ₹<%= price %></p>
                <p><strong>Net Weight:</strong> <%= weight %></p>
                <p><strong>Company:</strong> <%= company %></p>
                <p><strong>Uses:</strong> <%= uses %></p>

                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" value="1" min="1" onchange="calculateTotal(<%= price %>)">

                <p><strong>Total Price:</strong> <span id="total-price">₹<%= price %></span></p>

                <div class="buttons">
                    <button onclick="goToPayment(<%= productId %>, <%= price %>)" class="proceed-button">Proceed to Buy</button>
                    <button onclick="addToCart(<%= productId %>)">Add to Cart</button>
                </div>

                <%
                            }
                            conn.close();
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    } else {
                        out.println("<p>Product not found.</p>");
                    }
                %>
            </div>
        </div>

        <div class="right-side">
            <div class="address-container">
                <label>Delivery Address:</label>
                <textarea id="address" rows="4" placeholder="Enter your address here..."></textarea>
                <button onclick="confirmAddress()">Confirm Address</button>
            </div>
            <div class="location-detector">
                <button onclick="detectLocation()">Detect My Location</button>
            </div>
            <div class="delivery-timing">
                <label>Delivery Timing:</label>
                <select id="delivery-time">
                    <option>8:00 AM - 10:00 AM</option>
                    <option>10:00 AM - 12:00 PM</option>
                    <option>12:00 PM - 2:00 PM</option>
                    <option>2:00 PM - 4:00 PM</option>
                    <option>4:00 PM - 6:00 PM</option>
                </select>
            </div>
        </div>
    </div>

    <script>
        function calculateTotal(price) {
            const quantity = document.getElementById("quantity").value;
            const total = price * quantity;
            document.getElementById("total-price").innerText = "₹" + total.toFixed(2);
        }

        function goToPayment(productId, price) {
            const quantity = document.getElementById("quantity").value;
            const total = price * quantity;
            window.location.href = 'Payment.jsp?id=' + productId + '&total=' + total;
        }

        function confirmAddress() {
            const address = document.getElementById("address").value;
            if (address.trim() === "") {
                alert("Please enter your address.");
            } else {
                document.getElementById("confirmed-address").innerText = "Address confirmed: " + address;
            }
        }

        function detectLocation() {
            alert("Detecting location...");
        }

        function addToCart(productId) {
            alert("Product added to cart.");
        }
    </script>
</body>
</html>
 --%>