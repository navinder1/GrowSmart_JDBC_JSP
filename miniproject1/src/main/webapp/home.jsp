<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.growsmart.entity.Utility"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GrowSmart</title>
<link rel="icon" type="image/png" href="3.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="styles.css">

 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&family=Noto+Sans+Telugu:wght@400;700&display=swap" rel="stylesheet">
<!--for telugu  -->
<style>
 .product {
        background: #ffffff;
        border: 1px solid #ddd;
        border-radius: 10px;
        width: 300px;
        text-align: left;
        padding: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .product img{
        display: block;
        max-width: 100%;
        height: auto;
        margin: 10px 0;
        border-radius: 8px;
    }

    .product strong {
        display: inline;
        font-size: 16px;
        color: #333;
        margin-right: 5px;
    }

    .product p {
        display: inline;
        font-size: 14px;
        color: #666;
    }

    .product .button-container {
        margin-top: 15px;
        text-align: center;
    }

    .buy-button {
        padding: 10px 20px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .buy-button:hover {
        background-color: #45a049;
    }

    .product:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    @media (max-width: 768px) {
        .product {
            width: 90%;
        }
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
</head>
<body>
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
			
			<span class="cart-icon"> <i
				class="fas fa-shopping-cart"></i> <span class="count"></span>
			</span>
			<div class="menu-container">
				<!-- Menu Icon -->
				<a href="#" class="menu"><i class="fa fa-bars"
					aria-hidden="true"></i></a>

				<!-- Dropdown Content -->
				<div class="dropdown-content">
					<a href="ProcessOrder.jsp"><i class="fa fa-box"></i> Orders</a> <a href="#"><i
						class="fa fa-heart"></i> Wishlist</a> <a href="#"><i
						class="fa fa-gift"></i> Gift Card</a> <a href="setting.jsp"><i
						class="fa fa-cog"></i> Settings</a> <a href="#"><i
						class="fa fa-question-circle"></i> Help</a> <a href="LogoutServlet"><i
						class="fa fa-sign-out-alt"></i> Logout</a>
				</div>
			</div>
		</div>
		</div>
	</header>
	<div class="categories">
    <div class="category">
        <a href="home.jsp?category=all" style="color: black; text-decoration: none;">
            <img src="OIP (5).jpeg" alt="All">
            <div>All</div>
        </a>
    </div>
    <div class="category">
        <a href="home.jsp?category=Pesticides" style="color: black; text-decoration: none;">
            <img src="th (1).jpeg" alt="Pesticides">
            <div>Pesticides</div>
        </a>
    </div>
    <div class="category">
        <a href="home.jsp?category=Fertiliser" style="color: black; text-decoration: none;">
            <img src="OIP (2).jpeg" alt="Fertilizers">
            <div>Fertilizers</div>
        </a>
    </div>
    <div class="category">
        <a href="home.jsp?category=Seeds" style="color: black; text-decoration: none;">
            <img src="OIP (3).jpeg" alt="Seeds">
            <div>Seeds</div>
        </a>
    </div>
    <div class="category">
        <a href="home.jsp?category=Equipment" style="color: black; text-decoration: none;">
            <img src="download.jpeg" alt="Equipment">
            <div>Equipment</div>
        </a>
    </div>
</div>



	<div class="advertisement">
		<video id="advertisementVideo" autoplay muted>
			<source src="aad.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
		<button class="mute-button" id="muteButton">
			<i class="fas fa-volume-mute"></i>
		</button>
	</div>
	
	<div class="container">
		<!-- <h3>Search Results:</h3> -->
		
		<%
		// Fetch query parameter from the search form
		String searchQuery = request.getParameter("query");
		if (searchQuery != null && !searchQuery.trim().isEmpty()) {
			// Database connection and search logic
			try {
				Class.forName(Utility.Driver);
				Connection conn = Utility.fetchConnection();

				// Using `LIKE` for partial matches
				String sql = "SELECT id, name, description, price, weight, company, uses FROM images WHERE name LIKE ? OR description LIKE ?";
				PreparedStatement statement = conn.prepareStatement(sql);
				statement.setString(1, "%" + searchQuery + "%"); // partial match for name
				statement.setString(2, "%" + searchQuery + "%"); // partial match for description

				ResultSet resultSet = statement.executeQuery();

				// Check if any results are returned
				boolean hasResults = false;
				while (resultSet.next()) {
			hasResults = true;
			int imageId = resultSet.getInt("id");
			String imageName = resultSet.getString("name");
			/* String description = resultSet.getString("description"); */
			double price = resultSet.getDouble("price");
			String weight = resultSet.getString("weight");
			String company = resultSet.getString("company");
			String uses = resultSet.getString("uses");

			// Display each matching product
		%>
		</div>
		
		<div class="product">
			<strong><%=imageName%></strong><br> <img src="fetch?id=<%=imageId%>" alt="<%=imageName%>">
    <p><strong>Product Name:</strong> <%=imageName%></p><br>
    <p><strong>Price:</strong> $<%=price%></p><br>
    <p><strong>Net Weight:</strong> <%=weight%></p><br>
    <p><strong>Company:</strong> <%=company%></p><br>
    <p><strong>Uses:</strong> <%=uses%></p>
    <div class="button-container">
			<div class="button-container">
				<button class="buy-button"
					onclick="window.location.href='product_details.jsp?id=<%=imageId%>'">Buy</button>
			</div>
		</div>
		
		<%
		}
		if (!hasResults) {
		// If no results found
		out.println("<p>No results found for: " + searchQuery + "</p>");
		}

		resultSet.close();
		statement.close();
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		%>
		<p>
			Error retrieving search results:
			<%=e.getMessage()%></p>
		<%
		}
		} else {
		// Prompt user to enter a search term if none was provided
		%>
		<!-- <p>Please enter a search term to see results.</p> -->
		<%
		}
		%>
	</div>
	</div>
	<div class="container">
    <!-- <h3>Products:</h3> -->
    <%
        String category = request.getParameter("category");
        if (category == null || category.isEmpty()) {
            category = "all";
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
        <strong><%=imageName%></strong><br>
        <img src="fetch?id=<%=imageId%>" alt="<%=imageName%>"><br>
        <p><strong>Price:</strong> $<%=price%></p><br>
        <p><strong>Net Weight:</strong> <%=weight%></p><br>
        <p><strong>Company:</strong> <%=company%></p><br>
        <p><strong>Uses:</strong> <%=uses%></p><br>
        <div class="button-container">
            <button class="buy-button"
                onclick="window.location.href='product_details.jsp?id=<%=imageId%>'">Buy</button>
                <button type="submit" class="cart-button" id="cart">Cart</button>
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
    %>
</div>
	
	<%-- <div class="container">

		<%
		try {
			Class.forName(Utility.Driver);
			Connection conn = Utility.fetchConnection();
			String sql = "SELECT id, name, description, price, weight, company, uses FROM images"; // Updated query to fetch all details
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				int imageId = resultSet.getInt("id");
				String imageName = resultSet.getString("name");
				/* String description = resultSet.getString("description"); */
				double price = resultSet.getDouble("price");
				String weight = resultSet.getString("weight");
				String company = resultSet.getString("company");
				String uses = resultSet.getString("uses");
		%>
		<div class="product">
			<strong><%=imageName%></strong><br> <img src="fetch?id=<%=imageId%>" alt="<%=imageName%>">
    <p><strong>Product Name:</strong> <%=imageName%></p><br>
    <p><strong>Price:</strong> $<%=price%></p><br>
    <p><strong>Net Weight:</strong> <%=weight%></p><br>
    <p><strong>Company:</strong> <%=company%></p><br>
    <p><strong>Uses:</strong> <%=uses%></p>
    <div class="button-container">
			<div class="button-container">
				<button class="buy-button"
					onclick="window.location.href='product_details.jsp?id=<%=imageId%>'">Buy</button>
				<button type="submit" class="cart-button" id="cart">Cart</button>
			</div>
		</div>

</div>
		<%
		}
		resultSet.close(); // Close result set
		statement.close(); // Close statement
		conn.close(); // Close connection
		} catch (Exception e) {
		e.printStackTrace();
		%>
		<li>Error retrieving images: <%=e.getMessage()%></li>
		<%
		}
		%>

	</div> --%>

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

	<script>
		function toggleCartPanel() {
			var cartPanel = document.getElementById('cartPanel');
			cartPanel.classList.toggle('visible');
		}
		document.addEventListener('DOMContentLoaded', function() {

			const muteButton = document.getElementById('muteButton');
			const advertisementVideo = document
					.getElementById('advertisementVideo');

		});

		muteButton.addEventListener('click', function() {
			if (advertisementVideo.muted) {
				advertisementVideo.muted = false;
				muteButton.innerHTML = '<i class="fas fa-volume-up"></i>';
			} else {
				advertisementVideo.muted = true;
				muteButton.innerHTML = '<i class="fas fa-volume-mute"></i>';
			}
		});
	</script>
</body>
</html>