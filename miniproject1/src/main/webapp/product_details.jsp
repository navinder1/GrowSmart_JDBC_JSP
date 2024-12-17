<%@ page import="java.sql.*" %>
<%@ page import="com.growsmart.entity.Utility" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&family=Noto+Sans+Telugu:wght@400;700&display=swap" rel="stylesheet">
<!--for telugu  -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
     <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <link rel="stylesheet" href="styles.css">
    <style>
      body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.container {
    display: flex;
    flex-wrap: wrap;
    padding: 20px;
    gap: 10px; /* Space between items */
    justify-content: space-between; /* Evenly distributes space between child elements */
}

.left-side, .middle, .right-side {
    padding: 20px;
    border-radius: 8px;
   /*  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
    flex: 1; /* Allows all sections to grow equally */
}

.left-side {
    line-space:0.2;
    margin-left: 20px; /* Optional left margin for left-side content */
}

.middle {
    margin: 0 20px; /* Margin for middle section */
}

.right-side {
    margin-right: 20px; /* Optional right margin for right-side content */
}

.product {
    display: flex;
    flex-direction: column;
    align-items: flex-start; /* Align items to the start (left) */
}

.product img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin-bottom: 20px;
}

.product h1 {
    color: green;
    font-size: 24px;
    margin-bottom: 10px;
    text-align: left; /* Align title to the left */
}

.product p {
    margin-bottom: 10px;
    color: #000;
    text-align: left; /* Align text to the left */
}

.buttons .proceed-button {
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    text-align: center;
    transition: background-color 0.3s;
}

.buttons .proceed-button:hover {
    background-color: #218838;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="number"],
input[type="text"],
textarea {
    width: 100%;
    padding: 8px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

.location-detector button,
.confirm-address {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: green;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-top: 10px;
}

.location-detector button:hover,
.confirm-address:hover {
    background-color: #0056b3;
}

@media (max-width: 768px) {
    .left-side h1 {
        font-size: 20px;
    }

    .right-side {
        width: 100%;
        margin-top: 10px;
    }

    .right-side label,
    .right-side input,
    .right-side button,
    .right-side textarea {
        font-size: 16px;
    }
}

@media (min-width: 992px) {
    .buttons .proceed-button {
        flex: 0 0 auto;
    }
}

.buttons {
    display: flex; /* Use flexbox to align buttons */
    justify-content: center; /* Center the buttons horizontally */
    margin-top: 20px; /* Space above the buttons */
}

/* General Button Styles */
.buttons button {
    background-color: #28a745; /* Green background */
    color: white; /* White text */
    padding: 12px 24px; /* Vertical and horizontal padding */
    border: none; /* No border */
    border-radius: 4px; /* Rounded corners */
    font-size: 16px; /* Font size */
    font-weight: bold; /* Bold text */
    cursor: pointer; /* Pointer cursor on hover */
    text-align: center; /* Center text */
    transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
    margin: 0 10px; /* Space between buttons */
}

/* Button Hover Effect */
.buttons button:hover {
    background-color: #218838; /* Darker green on hover */
    transform: translateY(-2px); /* Slight lift on hover */
}

/* Button Active Effect */
.buttons button:active {
    background-color: #1e7e34; /* Even darker on active */
    transform: translateY(0); /* Return to original position */
}

/* Additional Styles for Specific Button Types */
.proceed-button {
    background-color: #007bff; /* Blue background for proceed button */
}

.proceed-button:hover {
    background-color: #0056b3; /* Darker blue on hover */
}
.address-container, .location-detector, .delivery-timing, .overview-container {
            margin-bottom: 15px;
        }
        #confirmed-address {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

 /* Basic styling for the menu container */
.menu-container {
  position: relative;
  display: inline-block;
  float: left; /* Align the menu to the left side */
}

/* Styling for the menu icon */
.menu {
  font-size: 30px;
  color: #333;
  text-decoration: none;
  padding: 10px;
  display: inline-block;
  cursor: pointer;
}

.menu:hover {
  color: #5a5a5a;
}

/* Dropdown container hidden by default */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #fff; /* Green background color */
  min-width: 200px;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 1;
  padding: 10px;
  border-radius: 5px;
  right: 0; /* Align the dropdown content to the right */
}

/* Styling for each dropdown link */
.dropdown-content a {
  color: #000; /* White text color */
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-size: 16px;
}

.dropdown-content a:hover {
  background-color: #218838; /* Darker green on hover */
  color: #f8f9fa; /* Slightly lighter white */
}

/* Show the dropdown when hovering over the menu icon */
.menu-container:hover .dropdown-content {
  display: block;
}

/* Optional: Add a little spacing between icons and text */
.dropdown-content i {
  margin-right: 10px;
}

/* Adjusting the hover effect and background color */
.menu-container:hover .menu {
  color: #28a745; /* Green color for the menu icon */
}

    </style>
    <header>
		<a class="upload" href="upload.jsp">Upload</a>

		<div class="left-section">
			<a href="home.jsp"> <img src="./2.png" alt="click on image"
				class="logo">
			</a>
		</div>
		<!-- Search Form -->
		<form action="home.jsp" method="get" class="search-bar2">
			<input type="text" name="query" placeholder="Search....">
			<button type="submit">
				<i class="fas fa-search"></i>
			</button>
		</form>


		<div class="nav1">
			<div class="dropdown-container">
				<a href="home.jsp">Home</a>
			</div>
			<div class="dropdown-container">
				<a href="about.jsp">About</a>
			</div>
			<div class="dropdown-container">
				<!-- Dropdown Toggle -->
				<a href="#" class="dropdown-toggle">Services</a>

				<!-- Dropdown Content -->
				<div class="dropdown-content">
					<a href="delivery.jsp"><i class="fas fa-shipping-fast"></i>
						Fast Delivery</a> <a href="support.jsp"><i class="fas fa-headset"></i>
						Customer Support</a> <a href="consulting.jsp"><i
						class="fas fa-seedling"></i> Agricultural Consulting</a> <a
						href="return.jsp"><i class="fas fa-undo"></i> Easy Returns</a>
				</div>
			</div>
			<div class="dropdown-container">
				<!-- Dropdown Toggle -->
				<a href="#" class="dropdown-toggle">Contact Us</a>

				<!-- Dropdown Content -->
				<div class="dropdown-content">
					<a href="mailto:smartgrow@.com"><i class="fas fa-envelope"></i>
						Email: smartgrow@.com</a> <a href="tel:+919391592561"><i
						class="fas fa-phone"></i> Phone: +91-9391592561</a> <a
						href="https://maps.google.com?q=Warangal,Hamkonda" target="_blank"><i
						class="fas fa-map-marker-alt"></i> Address: Warangal, Hanamkonda</a>

					<!-- Embedded Google Map -->
					<div class="map-container">
						<iframe
							src="https://www.google.com/maps/embed/v1/place?q=Vaagdevi+College+of+Engineering,+Bollikunta,+Warangal&key=YOUR_GOOGLE_MAPS_API_KEY"
							allowfullscreen="" loading="lazy"
							referrerpolicy="no-referrer-when-downgrade"> </iframe>
					</div>
				</div>
			</div>


		</div>

		<div class="right-section">
			<a href="login.jsp" class="login" title="Login"><i
				class="fas fa-sign-in-alt"></i></a> <a href="profile.jsp" class="login"
				title="Profile"><i class="fas fa-user"></i></a>
			<div class="cart-icon-container"></div>
			<span class="cart-icon" onclick="toggleCartPanel()"> <i
				class="fas fa-shopping-cart"></i> <span class="count"></span>
			</span>
			<div class="menu-container">
				<!-- Menu Icon -->
				<a href="#" class="menu"><i class="fa fa-bars"
					aria-hidden="true"></i></a>

				<!-- Dropdown Content -->
				<div class="dropdown-content">
					<a href="#"><i class="fa fa-box"></i> Orders</a> <a href="#"><i
						class="fa fa-heart"></i> Wishlist</a> <a href="#"><i
						class="fa fa-gift"></i> Gift Card</a> <a href="#"><i
						class="fa fa-user"></i> Profile</a> <a href="#"><i
						class="fa fa-cog"></i> Settings</a> <a href="#"><i
						class="fa fa-question-circle"></i> Help</a> <a href="#"><i
						class="fa fa-sign-out-alt"></i> Logout</a>
				</div>
			</div>
		</div>
	</header>
    <script>
        function calculateTotal(price) {
            const quantity = document.getElementById("quantity").value;
            const total = price * quantity;
            document.getElementById("total-price").innerText = "₹" + total.toFixed(2);
        }

        function goToPayment(productId, price) {
            const quantity = document.getElementById("quantity").value;
            const total 
            = price * quantity;
            window.location.href = 'Payment.jsp?id=' + productId + '&total=' + total;
        }

        function confirmAddress() {
            // Add your address confirmation logic here
            alert("Address confirmed!");
        }

        function detectLocation() {
            // Add your location detection logic here
            alert("Detecting location...");
        }
    </script>
</head>
<body>
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


    <script>
        function calculateTotal(price) {
            let quantity = document.getElementById("quantity").value;
            document.getElementById("total-price").innerText = "₹" + (price * quantity);
        }
    </script>

    <h1><%= name %></h1>
    <img src="fetch?id=<%= productId %>" alt="<%= name %>" width="300" height="300">
    <%-- <p><strong>Description:</strong> <%= description %></p> --%>
    <p><strong>Price:</strong> ₹<%= price %></p>
    <p><strong>Net Weight:</strong> <%= weight %></p>
    <p><strong>Company:</strong> <%= company %></p>
    <p><strong>Uses:</strong> <%= uses %></p>
    
    <label for="quantity">Quantity:</label>
    <input type="number" id="quantity" name="quantity" min="1" max="100" value="1" onchange="calculateTotal(<%= price %>)">
    <p><strong>Total Price:</strong> <span id="total-price">₹<%= price %></span></p>

    <div class="buttons">
        <% if (isLoggedIn) { %>
            <button onclick="location.href='Payment.jsp?productId=<%= productId %>&price=<%= price %>&quantity=' + document.getElementById('quantity').value">Proceed to Buy</button>
        <% } else { %>
            <button onclick="location.href='login.jsp?redirect=product_details.jsp?id=<%= productId %>'">Proceed to Buy</button>
        <% } %>
    </div>
</body>
</html>

<%
            } else {
%>
                <p>Product not found.</p>
<%
            }
            resultSet.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
%>
            <p>Error retrieving product details: <%= e.getMessage() %></p>
<%
        }
    } else {
%>
    <p>No product ID provided.</p>
<%
    }
%>

     </div>
        </div>
        <div class="middle">
         <%
                    String productId1 = request.getParameter("id");

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

                <p><strong>Description:</strong> <%= description %></p>
               
                <%
                            }
                            resultSet.close();
                            statement.close();
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                %>
                            <p>Error retrieving product details: <%= e.getMessage() %></p>
                <%
                        }
                    } else {
                %>
                    <p>No product ID provided.</p>
                <%
                    }
                %>
        </div>
       
       
        
  <div class="right-side">
   
<%
    // Get the user email from the session
    String userEmail = (String) session.getAttribute("userEmail");
    String homeAddress = "";
    String officeAddress = "";
    String otherAddress = "";

    // If user is logged in, fetch the addresses
    if (userEmail != null && !userEmail.isEmpty()) {
        // Database connection details
        String dbUrl = "jdbc:mysql://localhost:3306/bank"; // Change to your DB details
        String dbUser = "root";  // Change to your DB user
        String dbPassword = "Navinder@12";  // Change to your DB password

        // Query to fetch addresses
        String query = "SELECT home_address, office_address, other_address FROM users12 WHERE email = ?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, userEmail);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                homeAddress = rs.getString("home_address");
                officeAddress = rs.getString("office_address");
                otherAddress = rs.getString("other_address");
            }

            rs.close();
            ps.close();

            // If the address is being updated
            String shippingAddress = request.getParameter("address");
            if (shippingAddress != null && !shippingAddress.isEmpty()) {
                String updateQuery = "UPDATE orders SET shipping_address = ? WHERE user_email = ?";
                PreparedStatement updatePs = conn.prepareStatement(updateQuery);
                updatePs.setString(1, shippingAddress);
                updatePs.setString(2, userEmail);
                updatePs.executeUpdate();
                updatePs.close();
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    } else {
        // Redirect to login page if user is not logged in
        response.sendRedirect("login.jsp");
    }
%>

<h1>Address</h1>
<!-- <form method="POST" action="updateShippingAddress.jsp"> -->
    <div class="address-container">
        <label for="common-addresses">Select Address Type:</label>
        <select id="common-addresses" name="addressType" onchange="fillAddress(this.value)">
            <option value="">-- Select --</option>
            <option value="Home">Home</option>
            <option value="Office">Office</option>
            <option value="Other">Other</option>
        </select>
        <br>

        <label for="address">Enter Address:</label>
        <input type="text" id="address" name="address" placeholder="Enter Address" value="<%= homeAddress %>" onfocus="initAutocomplete()">
        
        <button class="confirm-address" type="submit">Confirm Address</button>
    </div>
</form>

<div id="confirmed-address" style="display:none;">
    <h3>Confirmed Address:</h3>
    <p id="address-confirmed"></p>
</div>

<div class="location-detector">
    <button onclick="detectLocation()">Detect Location</button>
</div>

<div class="delivery-timing">
    <label for="delivery-time">Delivery Timing:</label>
    <p id="delivery-time">Calculating...</p>
</div>

<div class="overview-container">
    <label for="overview">Overview:</label>
    <textarea id="overview" name="overview" rows="5" placeholder="Overview will be displayed here..."></textarea>
</div>

<script>
    // Preload address variables from the server
    const homeAddress = "<%= homeAddress %>";
    const officeAddress = "<%= officeAddress %>";
    const otherAddress = "<%= otherAddress %>";

    // JavaScript function to fill the address based on the selected type
    function fillAddress(type) {
        if (type === "Home") {
            document.getElementById("address").value = homeAddress;
        } else if (type === "Office") {
            document.getElementById("address").value = officeAddress;
        } else if (type === "Other") {
            document.getElementById("address").value = otherAddress;
        } else {
            document.getElementById("address").value = "";
        }
    }

    function initAutocomplete() {
        // Placeholder function for initializing autocomplete
        console.log("Autocomplete initialized");
    }

    function detectLocation() {
        // Placeholder function for detecting location
        alert("Location detection is not implemented.");
    }
</script>

    </div>
  
    </div>
    
<footer>
		<div class="footer-container">
			<div class="footer-container">
				<div class="footer-section about">
					<h2>About Us</h2>
					<p>We provide a variety of agricultural products with fast
						delivery, catering to the needs of both customers and dealers.</p>
				</div>
				<div class="footer-section services">
					<h2>Services</h2>
					<ul>
						<li><a href="delivery.jsp">Fast Delivery</a></li>
						<li><a href="support.jsp">Customer Support</a></li>
						<li><a href="consulting.jsp">Agricultural Consulting</a></li>
						<li><a href="return.jsp">Easy Returns</a></li>
					</ul>
				</div>
				<div class="footer-section links">
					<h2>Quick Links</h2>
					<ul>
						<li><a href="home.jsp">Home</a></li>
						<li><a href="#product">Products</a></li>
						<li><a href="#contact">Contact Us</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="faq.html">FAQ</a></li>
					</ul>
				</div>
				<div class="footer-section contact">
					<h2>Contact Us</h2>
					<ul>
						<li>Email: smartgrow@.com</li>
						<li>Phone: +91-9391592561</li>
						<li>Address: Warangal,Hamkonda</li>
					</ul>
				</div>
				<div class="footer-section social">
					<h2>Follow Us</h2>
					<a href="https://www.facebook.com" target="_blank"
						aria-label="Facebook"> <i class="fa-brands fa-facebook"
						aria-hidden="true"></i>
					</a> <a href="https://www.linkedin.com" target="_blank"
						aria-label="LinkedIn"> <i class="fa-brands fa-linkedin"
						aria-hidden="true"></i>
					</a> <a href="https://www.instagram.com" target="_blank"
						aria-label="Instagram"> <i class="fa-brands fa-instagram"
						aria-hidden="true"></i>
					</a> <a href="https://www.youtube.com" target="_blank"
						aria-label="YouTube"> <i class="fa-brands fa-youtube"
						aria-hidden="true"></i>
					</a>
				</div>
				<div class="footer-bottom">
					<p>&copy; 2024 Agriculture Store. All rights reserved.</p>
				</div>
			</div>
			</div>
	</footer>
</body>
</html>
