<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.growsmart.entity.Utility" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="styles.css">
    <title>User Profile</title>
     <link rel="icon" type="image/png" href="3.png">
</head>
<style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
                min-height: 100vh;
    }

    /* Profile Page Container */
    .profile-page {
        width: 80%;
        max-width: 800px;
        background-color: #fff;
        border-radius: 10px;
        overflow: hidden;
        text-align: center;
    }

    .cover-photo {
        width: 100%;
        height: 200px;
        background-image: url('uploads/cover.jpg'); /* Replace with actual cover image */
        background-size: cover;
        background-position: center;
    }

    .profile-section {
        margin-top: -60px;
    }

    .profile-pic {
        border-radius: 50%;
        width: 120px;
        height: 120px;
        object-fit: cover;
        border: 4px solid #fff;
    }

    h2 {
        font-size: 24px;
        color: #333;
        margin: 10px 0 5px;
    }

    .email {
        font-size: 16px;
        color: #666;
        margin: 5px 0;
    }

    .form-section {
        margin: 20px;
    }

    .form-section label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }

    .form-section input[type="file"],
    .form-section input[type="submit"] {
        margin-top: 10px;
    }

    .upload-button {
        background-color: #3897f0;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    .upload-button:hover {
        background-color: #2874c4;
    }

    .logout-button {
        background-color: #f0f0f0;
        color: #333;
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-weight: bold;
        transition: background-color 0.3s;
        margin-top: 15px;
    }

    .logout-button:hover {
        background-color: #e0e0e0;
    }
      h2 {
            text-align: center;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
        
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Placeholder styling */
        input::placeholder {
            color: #888;
            font-style: italic;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Hide sections initially */
        .address-section {
            display: none;
        }
        .heart{
        display:flex;
        justify-content:space-around;
        }
</style>
<body>
<header>
		<a class="upload" href="upload.jsp">Upload</a>

		<div class="left-section">
			<a href="home.jsp"> <img src="./2.png" alt="click on image"
				class="logo">
			</a>
		</div>
		<!-- Search Form -->
		<!-- <form action="home.jsp" method="get" class="search-bar2">
			<input type="text" name="query" placeholder="Search....">
			<button type="submit">
				<i class="fas fa-search"></i>
			</button>
		</form> -->


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
						class="fa fa-gift"></i> Gift Card</a> <a href="#"><i
						class="fa fa-user"></i> Profile</a> <a href="#"><i
						class="fa fa-cog"></i> Settings</a> <a href="#"><i
						class="fa fa-question-circle"></i> Help</a> <a href="#"><i
						class="fa fa-sign-out-alt"></i> Logout</a>
				</div>
			</div>
		</div>
	</header>
<div class="heart">
<%
    String username = (String) session.getAttribute("user");
    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {
        String email = "";
        String profilePic = "default.jpg"; // Default picture if none is set
        try {
            Connection connection = Utility.fetchConnection();
            String sql = "SELECT email, profile_picture FROM users12 WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                email = resultSet.getString("email");
                profilePic = resultSet.getString("profile_picture");
                if (profilePic == null || profilePic.isEmpty()) {
                    profilePic = "default.jpg";
                }
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
%>

<div class="profile-page">
    <!-- Cover Photo -->
    <div class="cover-photo"></div>

    <!-- Profile Picture and Name Section -->
    <div class="profile-section">
        <img src="uploads/<%= profilePic %>" alt="Profile Picture" class="profile-pic" onerror="this.onerror=null; this.src='uploads/default.jpg';">
        <h2><%= username %></h2>
        <p class="email"><strong>Email:</strong> <%= email %></p>
    </div>

    <!-- Form to upload new profile picture -->
    <div class="form-section">
        <form action="ProfileUploadServlet" method="post" enctype="multipart/form-data">
            <label>Upload Profile Picture:</label>
            <input type="file" name="profilePicture" accept="image/*" required>
            <input type="submit" value="Upload & Update Profile" class="upload-button">
        </form>
    </div>

    <!-- Logout Form -->
    <form action="LogoutServlet" method="post">
        <input type="submit" value="Logout" class="logout-button">
    </form>
</div>

<%
    }
%>
<main>
<h2>Address Form</h2>
    <form action="address" method="post">
        
        <!-- Address Type Selector -->
        <label for="addressType">Select Address Type:</label>
        <select id="addressType" name="addressType" onchange="showAddressFields()" required>
            <option value="">-- Select Address Type --</option>
            <option value="home">Home Address</option>
            <option value="office">Office Address</option>
            <option value="other">Other</option>
        </select>
        
        <!-- Home Address Section -->
        <div id="homeAddress" class="address-section">
            <label for="homeDoorNo">Door No:</label>
            <input type="text" id="homeDoorNo" name="homeDoorNo" placeholder="e.g., 123">
            
            <label for="homeStreet">Street/Colony:</label>
            <input type="text" id="homeStreet" name="homeStreet" placeholder="e.g., Green Park">
            
            <label for="homeVillage">Village:</label>
            <input type="text" id="homeVillage" name="homeVillage" placeholder="e.g., Lakshmi Nagar">
            
            <label for="homePincode">Pincode:</label>
            <input type="text" id="homePincode" name="homePincode" pattern="\d{6}" title="Please enter a 6-digit pincode" placeholder="e.g., 500001">
        </div>

        <!-- Office Address Section -->
        <div id="officeAddress" class="address-section">
            <label for="officeName">Office Name:</label>
            <input type="text" id="officeName" name="officeName" placeholder="e.g., XYZ Corporation">
            
            <label for="officeDoorNo">Door No:</label>
            <input type="text" id="officeDoorNo" name="officeDoorNo" placeholder="e.g., 456">
            
            <label for="officeStreet">Street:</label>
            <input type="text" id="officeStreet" name="officeStreet" placeholder="e.g., Main Road">
            
            <label for="officeCity">City:</label>
            <input type="text" id="officeCity" name="officeCity" placeholder="e.g., Hyderabad">
            
            <label for="officePincode">Pincode:</label>
            <input type="text" id="officePincode" name="officePincode" pattern="\d{6}" title="Please enter a 6-digit pincode" placeholder="e.g., 500002">
        </div>

        <!-- Other Address Section -->
        <div id="otherAddress" class="address-section">
            <label for="otherDescription">Description:</label>
            <input type="text" id="otherDescription" name="otherDescription" placeholder="e.g., Warehouse, Friend's Place">
            
            <label for="otherDoorNo">Door No:</label>
            <input type="text" id="otherDoorNo" name="otherDoorNo" placeholder="e.g., 789">
            
            <label for="otherStreet">Street/Area:</label>
            <input type="text" id="otherStreet" name="otherStreet" placeholder="e.g., Central Park">
            
            <label for="otherCity">City:</label>
            <input type="text" id="otherCity" name="otherCity" placeholder="e.g., Secunderabad">
            
            <label for="otherPincode">Pincode:</label>
            <input type="text" id="otherPincode" name="otherPincode" pattern="\d{6}" title="Please enter a 6-digit pincode" placeholder="e.g., 500003">
        </div>

        <button type="submit">Submit</button>
    </form>

    <script>
        function showAddressFields() {
            // Hide all address sections initially
            document.getElementById("homeAddress").style.display = "none";
            document.getElementById("officeAddress").style.display = "none";
            document.getElementById("otherAddress").style.display = "none";
            
            // Show the relevant section based on the selected address type
            var addressType = document.getElementById("addressType").value;
            if (addressType === "home") {
                document.getElementById("homeAddress").style.display = "block";
            } else if (addressType === "office") {
                document.getElementById("officeAddress").style.display = "block";
            } else if (addressType === "other") {
                document.getElementById("otherAddress").style.display = "block";
            }
        }
    </script>
</main>
</div>

</body>
</html>
