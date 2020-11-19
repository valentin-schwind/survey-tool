<?php	
	$connection = null;
	$trialstable = "trials";
	$emailstable = "emails";
	$userstable  = "users";

	$connection = mysqli_connect("HOST", "USERNAME", "PASSWORD", "DATABASE");
	
	if (mysqli_connect_errno()) {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	  mysqli_close($connection);
	}
	
	if(!$connection)
	{
		echo mysqli_connect_error();
		exit(mysqli_connect_error());
	}
?>