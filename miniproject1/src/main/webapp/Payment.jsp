<%@ page import="java.sql.*, java.text.DecimalFormat" %>
<%@ page import="com.growsmart.entity.Utility" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String productId = request.getParameter("productId");
    double price = Double.parseDouble(request.getParameter("price"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    double totalPrice = price * quantity;
    String name = "";
    String description = "";

    try {
        Class.forName(Utility.Driver);
        Connection conn = Utility.fetchConnection();
        
        String sql = "SELECT name, description FROM images WHERE id = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, Integer.parseInt(productId));
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            name = resultSet.getString("name");
            description = resultSet.getString("description");
        }

        resultSet.close();
        statement.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
     <link rel="icon" type="image/png" href="3.png">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .payment-container {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .product-info {
            text-align: left;
            margin-bottom: 15px;
        }
        .product-info p {
            margin: 5px 0;
            color: #555;
        }
        .total-amount {
            background-color: #f0f0f0;
            border-radius: 5px;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0;
        }
        .payment-section {
            margin-top: 20px;
            text-align: left;
        }
        .payment-section h3 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }
        .payment-options {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        .payment-option {
            display: flex;
            align-items: center;
            gap: 15px;
            background-color: #fafafa;
            padding: 15px;
            border-radius: 8px;
            transition: transform 0.3s;
            text-decoration: none;
            color: #333;
        }
        .payment-option:hover {
            transform: scale(1.05);
        }
        .payment-option img {
            width: 80px;
            height: 80px;
            border-radius: 5px;
            object-fit: cover;
        }
        .payment-option p {
            margin: 0;
            font-size: 16px;
            font-weight: 500;
        }
        .cod-button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
    <script>
        function processOrder(paymentType) {
            document.getElementById('paymentType').value = paymentType;
            document.getElementById('orderForm').submit();
        }
    </script>
</head>
<body>
    <div class="payment-container">
        <h1>Payment Page</h1>
        

        <div class="product-info">
            <p><strong>Product Name:</strong> <%= name %></p>
           <%--  <p><strong>Description:</strong> <%= description %></p> --%>
            <p><strong>Price per Unit: ₹</strong> <%= new DecimalFormat("0.00").format(price) %></p>
            <p><strong>Quantity:</strong> <%= quantity %></p>
        </div>

        <div class="total-amount">
            Total Price: ₹<%= new DecimalFormat("0.00").format(totalPrice) %>
        </div>

        <!-- Payment Options -->
        <div class="payment-section">
            <h3>Choose a Payment Option:</h3>
            <div class="payment-options">
                <a href="javascript:void(0)" class="payment-option" onclick="processOrder('PhonePe')">
                    <img src="./phonepay.jpg" alt="PhonePe QR Code">
                    <p>Pay with <strong>PhonePe</strong></p>
                </a>
                <a href="javascript:void(0)" class="payment-option" onclick="processOrder('GooglePay')">
                    <img src="./gpay.jpg" alt="Google Pay QR Code">
                    <p>Pay with <strong>Google Pay</strong></p>
                </a>
                <a href="javascript:void(0)" class="payment-option" onclick="processOrder('Paytm')">
                    <img src="./paytm.jpg" alt="Paytm QR Code">
                    <p>Pay with <strong>Paytm</strong></p>
                </a>
                <a href="javascript:void(0)" class="payment-option" onclick="processOrder('NetBanking')">
                    <p>Pay via <strong>Net Banking</strong></p>
                </a>
                <a href="javascript:void(0)" class="payment-option" onclick="processOrder('Card')">
                    <p>Pay via <strong>Credit/Debit Card</strong></p>
                </a>
                <button class="cod-button" onclick="processOrder('COD')">Cash on Delivery</button>
            </div>
        </div>
    </div>

    <!-- Hidden Form for Order Processing -->
    <form id="orderForm" action="ProcessOrder.jsp" method="post">
        <input type="hidden" name="productId" value="<%= productId %>">
        <input type="hidden" name="price" value="<%= price %>">
        <input type="hidden" name="quantity" value="<%= quantity %>">
        <input type="hidden" name="totalPrice" value="<%= totalPrice %>">
        <input type="hidden" id="paymentType" name="paymentType" value="">
    </form>
</body>
</html>
