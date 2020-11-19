<?php
	include('config.php');
	
	if(!$connection)
	{
		echo mysqli_connect_error();
		exit(mysqli_connect_error());
	}
	
	$resultTrialID = mysqli_query($connection, "SELECT max(userID) FROM `" . $userstable . "`" );
	$response = '';
	while($row = mysqli_fetch_array($resultTrialID)) {
		$response .= $row[0];
	}
	if($response != null)
		echo $response + 1;
	else
		echo 1;
	
	mysqli_close($connection); 
	
?>