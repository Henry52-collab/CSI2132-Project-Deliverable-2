<?php
// Step 1: Connect to the database
require_once("Connection.php");
session_start();

// Step 2: Retrieve data from the database
$sql = "SELECT * FROM ehotel.employee";
$result = mysqli_query($conn,$sql);

// Step 3: Display the data in a form
if ($result->num_rows > 0) {
  echo "<table>";
  echo "<tr><th>ID</th><th>Name</th><th>Email</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["Employee_ID"] . "</td>";
    echo "<td>" . $row["Hotel_ID"] . "</td>";
    echo "<td>" . $row["Hotel_Chain_ID"] . "</td>";
    echo "<td>" . $row["First_name"] . "</td>";
    echo "<td>" . $row["Last_name"] . "</td>";
    echo "<td>" . $row["Address"] . "</td>";
    echo "<td>" . $row["SIN"] . "</td>";
    echo "<td>" . $row["Role"] . "</td>";
    echo "<td><a href='DeleteEmployee.php?id=" . $row["Employee_ID"] . "'>Delete</a></td>";
    echo "</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

// Step 4: Process the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $id = $_POST["id"];
  $Hotel_ID = $_POST["Hotel_ID"];
  $Hotel_Chain_ID = $_POST["Hotel_Chain_ID"];
  $fname = $_POST["First_name"];
  $mname = $_POST["Middle_name"];
  $lname = $_POST["Last_name"];
  $SIN = $_POST["SIN"];
  $address = $_POST["Address"];
  $role = $_POST["Role"];
  $sql = "INSERT INTO ehotel.employee(Employee_ID, Hotel_ID, Hotel_Chain_ID,First_name,Middle_name,Last_name,Address,SIN,Role) 
            VALUES ('$id', '$Hotel_ID', '$Hotel_Chain_ID','$fname','$mname','$lname','$address','$SIN','$role')";
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
  Hotel_ID: <input type="text" name="Hotel_ID"><br>
  Hotel_Chain_ID: <input type="text" name="Hotel_Chain_ID"><br>
  First_name: <input type="text" name="First_name"><br>
  Middle_name: <input type="text" name="Middle_name"><br>
  Last_name: <input type="text" name="Last_name"><br>
  Address: <input type="text" name="Address"><br>
  SIN: <input type="text" name="SIN"><br>
  Role: <input type="text" name="Role"><br>
  <input type="submit" value="Insert">
</form>