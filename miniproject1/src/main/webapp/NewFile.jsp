<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.growsmart.entity.Utility"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 900px;
            margin: auto;
        }

        .product {
            border: 1px solid #ddd;
            padding: 15px;
            margin: 10px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .product img {
            max-width: 100px;
        }

        .button-container {
            display: flex;
            gap: 10px;
        }

        .cart-icon {
            position: fixed;
            top: 20px;
            right: 20px;
            font-size: 24px;
            cursor: pointer;
        }

        .cart-items {
            position: fixed;
            top: 60px;
            right: 20px;
            background: #fff;
            border: 1px solid #ddd;
            width: 300px;
            max-height: 400px;
            overflow-y: auto;
            display: none;
            padding: 10px;
        }

        .cart-items h4 {
            margin: 0 0 10px 0;
        }

        .cart-item {
            border-bottom: 1px solid #ddd;
            padding: 5px 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <h3>Products:</h3>
        <%
            String category = request.getParameter("category");
            if (category == null || category.isEmpty()) {
                category = "all";
            }

            // Initialize session cart
            HttpSession session1 = request.getSession();
            List<Map<String, String>> cart = (List<Map<String, String>>) session1.getAttribute("cart");
            if (cart == null) {
                cart = new ArrayList<>();
                session.setAttribute("cart", cart);
            }

            try {
                Class.forName(Utility.Driver);
                Connection conn = Utility.fetchConnection();

                String sql;
                PreparedStatement statement;
                if (category.equalsIgnoreCase("all")) {
                    sql = "SELECT id, name, description, price, weight, company, uses FROM images";
                    statement = conn.prepareStatement(sql);
                } else {
                    sql = "SELECT id, name, description, price, weight, company, uses FROM images WHERE category = ?";
                    statement = conn.prepareStatement(sql);
                    statement.setString(1, category);
                }

                ResultSet resultSet = statement.executeQuery();
                boolean hasResults = false;
                while (resultSet.next()) {
                    hasResults = true;
                    int imageId = resultSet.getInt("id");
                    String imageName = resultSet.getString("name");
                    double price = resultSet.getDouble("price");
                    String weight = resultSet.getString("weight");
                    String company = resultSet.getString("company");
                    String uses = resultSet.getString("uses");
        %>
        <div class="product">
            <div>
                <strong><%= imageName %></strong><br>
                <img src="fetch?id=<%= imageId %>" alt="<%= imageName %>"><br>
                <p><strong>Price:</strong> $<%= price %></p>
                <p><strong>Net Weight:</strong> <%= weight %></p>
                <p><strong>Company:</strong> <%= company %></p>
                <p><strong>Uses:</strong> <%= uses %></p>
            </div>
            <div class="button-container">
                <button class="buy-button"
                    onclick="window.location.href='product_details.jsp?id=<%= imageId %>'">Buy</button>
                <form method="post" style="display:inline;">
                    <input type="hidden" name="productId" value="<%= imageId %>">
                    <input type="hidden" name="productName" value="<%= imageName %>">
                    <input type="hidden" name="productPrice" value="<%= price %>">
                    <button type="submit" class="cart-button">Add to Cart</button>
                </form>
            </div>
        </div>
        <%
                }
                if (!hasResults) {
                    out.println("<p>No products found in the selected category.</p>");
                }
                resultSet.close();
                statement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error fetching products: " + e.getMessage() + "</p>");
            }

            // Handle adding to cart
            String productId = request.getParameter("productId");
            if (productId != null) {
                String productName = request.getParameter("productName");
                String productPrice = request.getParameter("productPrice");
                String productImage = request.getParameter("productImage");
                

                Map<String, String> cartItem = new HashMap<>();
                cartItem.put("id", productId);
                cartItem.put("name", productName);
                cartItem.put("price", productPrice);
                cartItem.put("image", productImage);
                

                cart.add(cartItem);
                session.setAttribute("cart", cart);
            }
        %>
    </div>

    <div class="cart-icon" onclick="toggleCart()">
        <i class="fas fa-cart-arrow-down"></i> (<%= cart.size() %>)
    </div>

    <div class="cart-items" id="cart-items">
        <h4>Cart Items:</h4>
        <%
            for (Map<String, String> item : cart) {
        %>
        <div class="cart-item">
            <p><strong>Name:</strong> <%= item.get("image") %></p>
            <p><strong>Name:</strong> <%= item.get("name") %></p>
            <p><strong>Price:</strong> $<%= item.get("price") %></p>
        </div>
        <%
            }
        %>
    </div>

    <script>
        function toggleCart() {
            const cartItems = document.getElementById('cart-items');
            cartItems.style.display = cartItems.style.display === 'block' ? 'none' : 'block';
        }
    </script>
</body>

</html>
