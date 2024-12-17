<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Agricultural Consulting - Agri-Product Application</title>
    <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet" href="path/to/font-awesome/css/all.min.css">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
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
        .Ac,.ACW {
            display: flex;
            gap: 40px;
            margin: 50px 20px 30px 40px;
            line-height: 1.5;
            justify-content: space-between;

            max-width: 1200px;
        }

        /* Text content styling */
        .Ac p,
        .ACW p,
        ul {
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        h4,
        h2 {
            font-size: 24px;
            color: #333;
            margin-top: 30px;
        }

        ul {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        ul li {
            font-size: 16px;
            margin: 5px 0;
        }

        ul li strong {
            color: #2E8B57;
        }

        /* Increased Image styling */
        .Ac img,
        .ACW img {
            width: 80%;
            margin-left: 50px;
            /* Make the image take up 50% of the container */
            height: auto;
            border-radius: 10px;
        }

        /* Success Stories */
        h2 {
            font-size: 28px;
            color: #2E8B57;
            margin: 40px 0 20px 40px;
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {

            .Ac,
            .ACW {
                flex-direction: column;
                align-items: center;
                text-align: center;
                width: 90%;
                margin: 30px auto;
            }

            .Ac img,
            .ACW img {
                width: 80%;
            }
        }
    </style></style>
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
    <h1>Agricultural Consulting</h1>

    <!-- Consulting Services Section -->
    <div class="Ac">
        <div>
            <p>Our consulting service empowers farmers to make informed decisions and adopt sustainable farming
                practices, maximizing crop yield and efficiency.</p>
            <h4>Consulting Services We Offer</h4>
            <ul>
                <li><strong>Crop Selection:</strong> Personalized guidance on crop varieties based on soil type and
                    climate.</li>
                <li><strong>Pest Management:</strong> Effective pest and disease control methods to safeguard crops.
                </li>
                <li><strong>Soil Health Analysis:</strong> Insights into soil nutrients and recommendations for
                    improvement.</li>
                <li><strong>Equipment Recommendations:</strong> Advice on the best tools and technology for your farm
                    size.</li>
            </ul>
        </div>
        <img src="./cunsolt.jpeg" alt="Consulting Service Image">
    </div>

    <!-- Why Choose Section -->
    <div class="ACW">
        <img src="./cons.jpeg" alt="Consulting Benefits Image">
        <div>
            <h2>Why Choose Our Consulting Services?</h2>
            <p>With the help of our experienced agronomists, you can make well-informed decisions that lead to higher
                productivity, reduced costs, and long-term sustainability.</p>
        </div>
    </div>

    <!-- Success Stories Section -->
    <h2>Success Stories</h2>
    <div style="text-align: center; margin: 20px;">
        <p>“With Agri-Product’s consulting, I doubled my crop yield in just one season!” — <em>Farmer Radha,
                Rajasthan</em></p>
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
	</footer>
</body>

</html>