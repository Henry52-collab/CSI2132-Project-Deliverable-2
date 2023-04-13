<?php
//connect with database
require_once("Connection.php");
session_start();
//Process the delete request
$id = $_GET["id"];
$sql = "DELETE FROM ehotel.employee WHERE Employee_ID = '$id'";
if($conn->query($sql) == TRUE){
    echo "<br>"."<br>"."Record deleted successfully";
}
else{
    echo "Error deleting record: ".$conn->error;
}
$conn->close();
?>