<?php
// Step 1: Connect to the database
require_once("Connection.php");
session_start();

// Step 2: Retrieve data from the database
$sql = "SELECT * FROM ehotel.customer";
$result = mysqli_query($conn,$sql);

// Step 3: Display the data in a form
if ($result->num_rows > 0) {
  echo "<table>";
  echo "<tr><th>ID</th><th>Name</th><th>Email</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["Hotel_ID"] . "</td>";
    echo "<td>" . $row["Hotel_Chain_ID"] . "</td>";
    echo "<td>" . $row["category"] . "</td>";
    echo "<td>" . $row["number_Of_Rooms"] . "</td>";
    echo "<td>" . $row["Address"] . "</td>";
    echo "<td>" . $row["email"] . "</td>";
    echo "<td>" . $row["city"] . "</td>";
    echo "<td><a href='DeleteHotel.php?id=" . $row["Hotel_ID"] . "'>Delete</a></td>";
    echo "</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

// Step 4: Process the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $id = $_POST["Hotel_ID"];
  $Hotel_Chain_ID = $_POST["Hotel_Chain_ID"];
  $category = $_POST["category"];
  $number_Of_Rooms = $_POST["number_Of_Rooms"];
  $address = $_POST["Address"];
  $email = $_POST["email"];
  $city = $_POST["city"];
  $sql = "INSERT INTO ehotel.hotel(Hotel_ID, Hotel_Chain_ID, category,number_Of_Rooms,address,email,city) 
            VALUES ('$id', '$Hotel_Chain_ID', '$category','$number_Of_Rooms','$address','$email','$city ')";
  if (mysqli_query($conn,$sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>";
  }
}

$conn->close();
?>

<!--Customer-->
<!--insert-->
<form method="post">
  ID: <input type="text" name="Hotel_ID"><br>
  Hotel_Chain_ID: <input type="text" name="Hotel_Chain_ID"><br>
  category <input type="text" name="category"><br>
  number_Of_Rooms: <input type="text" name="number_Of_Rooms"><br>
  Address: <input type="text" name="Address"><br>
  email: <input type="text" name="email"><br>
  city: <input type="text" name="city"><br>
  <input type="submit" value="Insert">
</form>