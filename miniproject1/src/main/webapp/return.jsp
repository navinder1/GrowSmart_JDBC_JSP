<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Easy Returns - Agri-Product Application</title>
     <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet" href="path/to/font-awesome/css/all.min.css">
     <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <link rel="stylesheet" href="styles.css">
    <style>
     /* General body styling */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: #333;
            background-color: #fff;
        }

        /* Header */
        h1 {
            font-size: 36px;
            color: #2E8B57;
            margin: 50px 20px 30px 40px;
        }

        /* Flex containers */
        .section, .policy-section {
            display: flex;
            align-items: flex-start;
            gap: 40px;
            margin: 0 50px;
            width: 90%;
            max-width: 1200px;
        }

        /* Text content styling */
        p, ol {
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-top: 30px;
        }

        ol {
            list-style: decimal;
            padding: 0;
            margin-top: 20px;
        }

        ol li {
            font-size: 16px;
            margin: 5px 0;
        }

        ol li strong {
            color: #2E8B57;
        }

        /* Increased Image styling */
        .section img, .policy-section img {
            width: 50%;   /* Image takes up 50% of the container */
            height: auto;
            border-radius: 10px;
        }

        /* Customer Feedback */
        .feedback {
            font-size: 18px;
            color: #555;
            margin: 30px 40px;
            font-style: italic;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .section, .policy-section {
                flex-direction: column;
                align-items: center;
                text-align: center;
                width: 90%;
                margin: 30px auto;
            }

            .section img, .policy-section img {
                width: 80%;
            }
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
  
    <h1>Easy Returns</h1>

    <!-- Easy Returns Introduction Section -->
    <div class="section">
        <div>
            <p>Our Easy Returns policy is designed to provide peace of mind, allowing you to shop with confidence and flexibility.</p>
        </div>
        <img src="https://via.placeholder.com/500x300.png?text=Easy+Returns" alt="Easy Returns">
    </div>

    <!-- Return Policy Section -->
    <div class="policy-section">
        <img src="https://via.placeholder.com/500x300.png?text=Return+Policy" alt="Return Policy">
        <div>
            <h2>Return Policy</h2>
            <p>Products can be returned within 30 days of purchase, provided they meet our return conditions, such as being unused and in original packaging.</p>
        </div>
    </div>

    <!-- How to Initiate a Return Section -->
    <div class="section">
        <div>
            <h2>How to Initiate a Return</h2>
            <ol>
                <li><strong>Contact Support:</strong> Reach out to our customer support team to start the return process.</li>
                <li><strong>Follow Instructions:</strong> Pack the product securely and send it to the address provided by our team.</li>
                <li><strong>Receive Refund:</strong> Once the product is received and inspected, we process your refund within 7 business days.</li>
            </ol>
        </div>
        <img src="https://via.placeholder.com/500x300.png?text=Initiate+Return" alt="How to Initiate a Return">
    </div>

    <!-- Refunds and Exchanges Section -->
    <div class="policy-section">
        <img src="https://via.placeholder.com/500x300.png?text=Refunds+and+Exchanges" alt="Refunds and Exchanges">
        <div>
            <h2>Refunds and Exchanges</h2>
            <p>Eligible returns qualify for either a full refund or an exchange. Refunds will be issued back to the original payment method.</p>
        </div>
    </div>

    <!-- Customer Feedback Section -->
    <h2 style="margin-left: 40px;">Customer Feedback</h2>
    <div class="feedback">
        <p>“Returning a product was easy and hassle-free. Agri-Product’s team guided me every step of the way.” — <em>Farmer Meera, Karnataka</em></p>
    </div>

</body>
</html>
