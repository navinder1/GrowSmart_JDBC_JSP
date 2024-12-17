<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Support - Agri-Product Application</title>
     <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet" href="path/to/font-awesome/css/all.min.css">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
    body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-size: cover;
            
            background-attachment: fixed;
            color: #333;
        }

        /* Header */
        h1,h2,h3,h4{
            margin-left: 20px;
        }
        h1 {
           
            font-size: 36px;
            color: #2E8B57;
            margin-top: 50px;
        }

        /* Section titles */
        h2 {
            font-size: 28px;
            color: #2E8B57;
            
            margin-top: 30px;
            text-decoration: underline;
        }

        /* Customer Support Section */
        .Customer_support {
            display: flex;
            align-items: center;
            gap: 30px;
           margin-right: 50px;
            flex-wrap: wrap;
            color: #333;
        }

        .Customer_support p {
            flex: 1;
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        .Customer_support img {
            max-width: 400px;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        /* Support Channel Section */
        .Support_chennel {
            display: flex;
           justify-content:space-around;
            align-items: center;
            margin-top: 50px;
            gap: 30px;
        }

        .Support_chennel img {
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .Support_chennel ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }

        .Support_chennel li {
            font-size: 16px;
            margin: 10px 0;
            display: flex;
            align-items: center;
            color: #333;
        }

        .Support_chennel i {
            margin-right: 10px;
            color: #2E8B57;
        }

        /* Common Topics Section */
        ul {
            padding: 0;
            list-style: none;
            margin-top: 20px;
            color: #333;
            margin-left: 25px;
            
        }

        ul li {
            font-size: 16px;
            margin: 5px 0;
        }

        /* Customer Testimonial Section */
        .customer-testimonial {
            font-style: italic;
            text-align: center;
            margin-top: 40px;
            font-size: 18px;
            color: #333;
            
        }

        .customer-testimonial em {
            color: #2E8B57;
            font-weight: bold;
        }
        p{
            margin-left: 25px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .Customer_support {
                flex-direction: column;
                align-items: center;
                margin: 20px;
            }

            .Customer_support img {
                max-width: 80%;
                margin-top: 20px;
            }

            .Support_chennel {
                margin: 30px 0;
            }

            .Support_chennel ul li {
                font-size: 14px;
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
     <h1>Customer Support</h1>
    <div class="Customer_support">
        <p>Our Customer Support team is dedicated to ensuring that you have a smooth and satisfying experience with our services and products. We understand that your time is valuable, and we’re here to assist you with any questions, concerns, or issues you may encounter. Whether it’s troubleshooting, guidance, or simply providing more information, we’re committed to delivering timely, helpful, and friendly support. Our goal is to resolve any matter efficiently while ensuring you feel heard, respected, and confident in the solutions we provide. We’re here to make your experience seamless and enjoyable, so please don’t hesitate to reach out—we’re always happy to help!</p>
        <img src="./customer.jpeg" alt="Customer Support">
    </div>

    <!-- Support Channels Section -->
    <h2>Support Channels</h2>
    <div class="Support_chennel">
        <img src="./Customer_channnel.jpeg" alt="Support Channels">
        <ul>
            <li><i class="fas fa-phone-alt"></i> <strong>Phone:</strong> +91-1234567890 (9am - 7pm IST)</li>
            <li><i class="fas fa-envelope"></i> <strong>Email:</strong> groowsmart@agri-product.com</li>
            <li><i class="fas fa-comments"></i> <strong>Live Chat:</strong> Available on our website from 9am - 9pm IST</li>
            <li><i class="fas fa-video"></i> <strong>Video Chat:</strong> +91-8995846666 (9am - 7pm IST)</li>
            <li><i class="fab fa-instagram"></i> <strong>Social:</strong> Instagram, Facebook, YouTube</li>
        </ul>
    </div>

    <!-- Common Topics Section -->
     
    <h2>Common Support Topics</h2>
    <div class="common_support">
    <ul>
        <li>Order status and tracking assistance</li>
        <li>Product inquiries and recommendations</li>
        <li>Technical support for website navigation and account issues</li>
        <li>Return and refund process guidance</li>
    </ul>
</div>
    <!-- FAQs Section -->
    <h2>FAQs</h2>
    <p><strong>Q: How do I track my order?</strong></p>
    <p><strong>Answer:</strong> You can track your order in the 'My Orders' section of your account.</p>
    <p><strong>Q: What is the return policy?</strong></p>
    <p><strong>Answer:</strong> Visit our <a href="return.jsp">Easy Returns</a> page for detailed information.</p>

    <!-- Customer Testimonial Section -->
    <div class="customer-testimonial">
        <p>“The support team at Agri-Product helped me choose the best seeds for my crop. Their advice is invaluable!” — <em>Farmer Arjun, Punjab</em></p>
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
    