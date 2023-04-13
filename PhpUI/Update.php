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
    echo "<td>" . $row["First_name"] . "</td>";
    echo "<td>" . $row["Middle_name"] . "</td>";
    echo "<td>" . $row["Last_name"] . "</td>";
    echo "<td>" . $row["SIN"] . "</td>";
    echo "<td>" . $row["CustomerID"] . "</td>";
    echo "<td><a href='delete.php?id=" . $row["CustomerID"] . "'>Delete</a></td>";
    echo "</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

// Step 4: Process the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $id = $_POST["id"];
  $fname = $_POST["First_name"];
  $mname = $_POST["middle_name"];
  $lname = $_POST["Last_name"];
  $SIN = $_POST["SIN"];
  $address = $_POST["Address"];
  $sql = "INSERT INTO ehotel.Customer (CustomerID, First_name, Middle_name,Last_name,password,Address,SIN) 
            VALUES ('$id', '$fname', '$mname','$lname',123456,'$address','$SIN')";
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
  ID: <input type="text" name="id"><br>
  First_name: <input type="text" name="First_name"><br>
  Middle_name: <input type="text" name="middle_name"><br>
  Last_name: <input type="text" name="Last_name"><br>
  Address: <input type="text" name="Address"><br>
  SIN: <input type="text" name="SIN"><br>
  <input type="submit" value=";Insert">
</form>
