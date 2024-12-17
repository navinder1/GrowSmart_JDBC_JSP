<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - GROW SMART E-Commerce</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="icon" type="image/png" href="3.png">
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="styles.css">

 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&family=Noto+Sans+Telugu:wght@400;700&display=swap" rel="stylesheet">
<!--for telugu  -->
<style>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
           
            color: #000;
            padding: 10px 20px;
            text-align: center;
        }
        section {
            padding: 20px;
        }
        .settings-form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
           
            margin: 20px 0;
            display: none; /* Hidden initially */
        }
        .settings-form input, .settings-form select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .settings-form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .settings-form button:hover {
            background-color: #45a049;
        }
        .toggle-btn {
            display:flex;
            color: #000;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 30%;
            text-align: left;
            margin: 10px 0;
        }
        .toggle-btn:hover {
            background-color: #45a049;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
        }
    
    

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


.dropdown-content i {
  margin-right: 10px;
}


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
						class="fa fa-question-circle"></i> Help</a> <a href="#"><i
						class="fa fa-sign-out-alt"></i> Logout</a>
				</div>
			</div>
		</div>
		</div>
	</header>
<body>

<header>
    <h1>Account Settings - GROW SMART E-Commerce</h1>
</header>

<section>
    <!-- Update Profile Information -->
    <button class="toggle-btn" onclick="toggleVisibility('profile-info')">
        <i class="fa fa-user"></i> Update Profile Information
    </button>
    <div id="profile-info" class="settings-form">
        <h3>Personal Information</h3>
        <form action="#" method="POST">
            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" name="fullname" placeholder="Enter your full name" required>

            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

            <label for="address">Address</label>
            <input type="text" id="address" name="address" placeholder="Enter your address" required>

            <button type="submit">Save Changes</button>
        </form>
    </div>

    <!-- Change Password -->
    <button class="toggle-btn" onclick="toggleVisibility('password-change')">
        <i class="fa fa-lock"></i> Change Password
    </button>
    <div id="password-change" class="settings-form">
        <h3>Password Settings</h3>
        <form action="#" method="POST">
            <label for="current-password">Current Password</label>
            <input type="password" id="current-password" name="current-password" placeholder="Enter current password" required>

            <label for="new-password">New Password</label>
            <input type="password" id="new-password" name="new-password" placeholder="Enter new password" required>

            <label for="confirm-password">Confirm New Password</label>
            <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm new password" required>

            <button type="submit">Update Password</button>
        </form>
    </div>

    <!-- Manage Payment Methods -->
    <button class="toggle-btn" onclick="toggleVisibility('payment-methods')">
        <i class="fa fa-credit-card"></i> Manage Payment Methods
    </button>
    <div id="payment-methods" class="settings-form">
        <h3>Manage Your Payment Methods</h3>
        <form action="#" method="POST">
            <label for="payment-methods">Add New Payment Method</label>
            <select id="payment-methods" name="payment-methods">
                <option value="credit-card">Credit Card</option>
                <option value="paypal">PayPal</option>
                <option value="google-pay">Google Pay</option>
                <option value="paytm">Paytm</option>
            </select>

            <label for="default-payment">Set Default Payment Method</label>
            <select id="default-payment" name="default-payment">
                <option value="credit-card">Credit Card</option>
                <option value="paypal">PayPal</option>
                <option value="google-pay">Google Pay</option>
                <option value="paytm">Paytm</option>
            </select>

            <button type="submit">Update Payment Methods</button>
        </form>
    </div>

    <!-- Notification Preferences -->
    <button class="toggle-btn" onclick="toggleVisibility('notification-preferences')">
        <i class="fa fa-bell"></i> Notification Preferences
    </button>
    <div id="notification-preferences" class="settings-form">
        <h3>Choose Your Preferences</h3>
        <form action="#" method="POST">
            <label for="order-updates">Order Updates via Email</label>
            <select id="order-updates" name="order-updates">
                <option value="enabled">Enabled</option>
                <option value="disabled">Disabled</option>
            </select>

            <label for="promotions">Promotions and Offers</label>
            <select id="promotions" name="promotions">
                <option value="enabled">Enabled</option>
                <option value="disabled">Disabled</option>
            </select>

            <button type="submit">Save Preferences</button>
        </form>
    </div>

    <!-- Privacy Settings -->
    <button class="toggle-btn" onclick="toggleVisibility('privacy-settings')">
        <i class="fa fa-shield-alt"></i> Privacy Settings
    </button>
    <div id="privacy-settings" class="settings-form">
        <h3>Privacy Preferences</h3>
        <form action="#" method="POST">
            <label for="profile-visibility">Profile Visibility</label>
            <select id="profile-visibility" name="profile-visibility">
                <option value="public">Public</option>
                <option value="private">Private</option>
                <option value="friends-only">Friends Only</option>
            </select>

            <label for="data-sharing">Data Sharing</label>
            <select id="data-sharing" name="data-sharing">
                <option value="enabled">Enabled</option>
                <option value="disabled">Disabled</option>
            </select>

            <button type="submit">Save Privacy Settings</button>
        </form>
    </div>
</section>

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
    // Function to toggle the visibility of the sections
    function toggleVisibility(sectionId) {
        var section = document.getElementById(sectionId);
        if (section.style.display === "none" || section.style.display === "") {
            section.style.display = "block"; // Show the section
        } else {
            section.style.display = "none"; // Hide the section
        }
    }
</script>

</body>
</html>
