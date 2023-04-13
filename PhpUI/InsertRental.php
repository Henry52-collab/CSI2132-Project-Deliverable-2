<!--Rental-->
<!--insert-->
<form method="post">
  ID: <input type="text" name="id"><br>
  Customer_ID: <input type="text" name="Customer_ID"><br>
  Room_ID: <input type="text" name="Room_ID"><br>
  Hotel_ID: <input type="text" name="Hotel_ID"><br>
  Hotel_Chain_ID: <input type="text" name="Hotel_Chain_ID"><br>
  Paid: <input type="text" name="Paid"><br>
  <input type="submit" value="Insert">
</form>


<?php
// Step 1: Connect to the database
require_once("Connection.php");
session_start();

// Step 2:Insert into database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $id = $_POST["id"];
  $Cus_ID = $_POST["Customer_ID"];
  $Room_ID = $_POST["Room_ID"];
  $Hotel_ID = $_POST["Hotel_ID"];
  $Hotel_Chain_ID = $_POST["Hotel_Chain_ID"];
  $Paid = $_POST["Paid"];
  $sql = "INSERT INTO ehotel.Rental(Rental_ID, Customer_ID, Room_ID,Hotel_ID,Hotel_Chain_ID,Paid) 
            VALUES ('$id', '$Cus_ID', '$Room_ID','$Hotel_ID',$Hotel_Chain_ID,'$Paid')";
  if (mysqli_query($conn,$sql) === TRUE) {
    echo "New record inserted successfully";
  } else {
    echo "Error: " . $sql . "<br>";
  }
}

$conn->close();
?>