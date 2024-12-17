<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Address</title>
     <link rel="icon" type="image/png" href="3.png">
</head>
<body>

<form id="addressForm" action="/submit-address" method="post">
    <!-- Address form fields -->
    <input type="radio" name="addressType" value="home" checked> Home
    <input type="radio" name="addressType" value="office"> Office
    <input type="radio" name="addressType" value="other"> Other
    <!-- Additional form fields for address go here -->
    <button type="submit">Submit Address</button>
</form>

<script>
    document.getElementById("addressForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form from submitting normally
        
        const formData = new FormData(this);
        
        fetch(this.action, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === "success") {
                alert(data.message); // Display success message
            } else {
                alert("Error: " + data.message); // Display error message
            }
        })
        .catch(error => {
            console.error("Error:", error);
            alert("An unexpected error occurred.");
        });
    });
</script>

</body>
</html>
