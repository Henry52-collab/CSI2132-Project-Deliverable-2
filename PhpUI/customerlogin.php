
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Student Database</title>
</head>

<?php
//Connect the database
session_start();
require_once("Connection.php");

//If the login form has been submitted
if(isset($_POST['login'])){
    $customerNum = $_POST['CustomerID'];
    $password = $_POST['password'];

    //Query the database for a matching record
    $sql = "SELECT CustomerID FROM ehotel.customer WHERE password = $password AND CustomerID = $customerNum";
    $result = mysqli_query($conn,$sql);
    //If there is a matching record

    if($result->num_rows == 1){
        //store the user's information in a session variable
        $_SESSION['username'] = $username;
        header('Location: search.php');
    }else{
        echo "User does not exists"."<br>";
    }
}


//Close the database connection
$conn->close();
?>

<body>
	<div id="header"> Customer LOGIN FORM</div>
	<form method="POST" action="">
		<p>Customer #: <input type="text" name="CustomerID" id="CustomerID"/></p>
		<p>Password: <input type="password" name="password" id="password" /></p>
		<p><input type="submit" value="login" name="login" /></p>
	</form>
	<a href="register.php">Register</a>

</body>
</html>