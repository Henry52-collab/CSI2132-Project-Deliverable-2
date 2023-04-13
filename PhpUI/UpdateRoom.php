<?php
// Step 1: Connect to the database
require_once("Connection.php");
session_start();

// Step 2: Retrieve data from the database
$sql = "SELECT * FROM ehotel.room";
$result = mysqli_query($conn,$sql);

// Step 3: Display the data in a form
if ($result->num_rows > 0) {
  echo "<table>";
  echo "<tr><th>ID</th><th>Name</th><th>Email</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["Room_ID"] . "</td>";
    echo "<td>" . $row["Hotel_ID"] . "</td>";
    echo "<td>" . $row["Hotel_ChainID"] . "</td>";
    echo "<td>" . $row["Price"] . "</td>";
    echo "<td>" . $row["Capacity"] . "</td>";
    echo "<td>" . $row["view"] . "</td>";
    echo "<td>" . $row["extension"] . "</td>";
    echo "<td>" . $row["availability"] . "</td>";
    echo "<td>" . $row["roomD"] . "</td>";
    echo "<td><a href='delete.php?id=" . $row["Room_ID"] . "'>Delete</a></td>";
    echo "</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

// Step 4: Process the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $id = $_POST["Room_ID"];
  $Hotel_ID = $_POST["Hotel_ID"];
  $Hotel_ChainID = $_POST["Hotel_ChainID"];
  $Price = $_POST["Price"];
  $Capacity = $_POST["Capacity"];
  $view = $_POST["view"];
  $extension = $_POST["extension"];
  $availability = isset($_POST["availability"])?1:0;
  $roomD = $_POST["roomD"];
  $sql = "INSERT INTO ehotel.room(Room_ID, Hotel_ID, Hotel_ChainID,Price,Capacity,view,extension,availability,roomD) 
            VALUES ('$id', '$Hotel_ID', '$Hotel_ChainID','$Price','$Capacity','$view','$extension','$availability','$roomD')";
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
  ID: <input type="text" name="Room_ID"><br>
  Hotel_ID: <input type="text" name="Hotel_ID"><br>
  Hotel_ChainID: <input type="text" name="Hotel_ChainID"><br>
  Price: <input type="text" name="Price"><br>
  Capacity : <input type="text" name="Capacity"><br>
  view: <input type="text" name="view"><br>
  extension: <input type="text" name="extension"><br>
  availability: <input type="text" name="availability"><br>
  roomD: <input type="text" name="roomD"><br>
  <input type="submit" value="Insert">
</form>