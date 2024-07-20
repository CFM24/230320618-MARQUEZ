<?php
$servername = "localhost";
$username = "root";
$password = ""; // Actual password here for it to work

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

