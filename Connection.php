<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
</head>
<body>
	<h2>Login Page</h2>
	<form action="login.php" method="post">
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required><br><br>
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br><br>
		<input type="submit" value="Login">
	</form>

	<?php
		// Check if the login form is submitted
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			// Retrieve the username and password
			$username = $_POST['username'];
			$password = $_POST['password'];

			// Validate the username and password
			if ($username == 'admin' && $password == 'password') {
				// Redirect to the home page if the credentials are correct
				header("Location: home.php");
				exit();
			} else {
				// Display an error message if the credentials are incorrect
				echo '<p style="color:red">Incorrect username or password</p>';
			}
		}
	?>
</body>
</html>
