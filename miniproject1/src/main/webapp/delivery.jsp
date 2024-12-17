<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fast Delivery - Agri-Product Application</title>
    <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet" href="path/to/font-awesome/css/all.min.css">
     <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
    @charset "UTF-8";
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
           margin-left: 35px;
        }

        /* Flex containers */
        .fast_delivery, .works {
            display: flex;
            align-items: flex-start;
            gap: 30px;
            margin-left:40px ;
            width: 80%;
            max-width: 1200px;
            border-radius: 10px;
            
           
            padding: 20px;
        }
        .works {
            gap:70px;
        }


        .fast_delivery img, .video-container video {
            max-width: 100%;
            border-radius: 8px;
           
        }

        /* Text content styling */
        .fast_delivery p, .works p, .works ol {
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        h3 {
            font-size: 24px;
            color: #2E8B57;
            margin: 30px 0 15px;
        }

        ul, ol {
            list-style: none;
            padding: 0;
            margin: 20px 0;
        }

        ul li, ol li {
            font-size: 16px;
            margin: 8px 0;
        }

        ul li strong, ol li strong {
            color: #2E8B57;
        }

     
        .video-container {
            width: 100%;
            max-width: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        video {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        /* FAQ section */
        h2 {
           margin-left: 35px;
            font-size: 28px;
            color: #2E8B57;
            margin-top: 40px;
            text-decoration: underline;
        }

        .faq-content {
           margin-left: 40px;
            max-width: 800px;
           
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .fast_delivery, .works {
                flex-direction: column;
                align-items: center;
                width: 90%;
                padding: 20px;
            }

            .fast_delivery img, .video-container {
                width: 100%;
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
     <h1>Fast Delivery</h1>

    <!-- Fast Delivery Section -->
    <div class="fast_delivery">
        <div>
            <p>Our Fast Delivery service guarantees that your agricultural products reach you on time, every time, ensuring minimal disruption to your farming activities.</p>
            
            <h3>Why Choose Our Fast Delivery?</h3>
            <ul>
                <li><strong>Reliability:</strong> We work with trusted carriers to ensure your products arrive safely.</li>
                <li><strong>Speed:</strong> With options for same-day and next-day delivery, we accommodate urgent needs.</li>
                <li><strong>Wide Coverage:</strong> We deliver to cities, rural areas, and remote regions.</li>
            </ul>
        </div>
        <img src="./fast_delivery.jpeg" alt="Fast Delivery Image">
    </div>

    <!-- How It Works Section -->
    <div class="works">
        <div class="video-container">
            <video autoplay muted loop>
                <source src="./HOME.mp4" type="video/mp4">
                <source src="./HOME.webm" type="video/webm">
                Your browser does not support the video tag.
            </video>
        </div>
        <div>
            <h1>How It Works</h1>
            <ol>
                <li><strong>Place an Order:</strong> Select products, add them to your cart, and proceed to checkout.</li>
                <li><strong>Track Your Delivery:</strong> Receive real-time updates on your order status.</li>
                <li><strong>Receive Your Product:</strong> Delivered at your doorstep, on time and in perfect condition.</li>
            </ol>
            
            <h3>Testimonials</h3>
            <p>“Fast Delivery is essential for my farm. I trust Agri-Product to deliver seeds and fertilizers promptly every season!” — <em>Farmer Ravi, Maharashtra</em></p>
        </div>
    </div>

    <!-- FAQs Section -->
    <h2>FAQs</h2>
    <div class="faq-content">
        <p><strong>Q: Do you offer delivery to rural areas?</strong></p>
        <p><strong>Answer:</strong> Yes, we cover rural and remote areas to support all farmers.</p>
        <p><strong>Q: What if my delivery is delayed?</strong></p>
        <p><strong>Answer:</strong> Our support team will contact you immediately to resolve any issues.</p>
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
