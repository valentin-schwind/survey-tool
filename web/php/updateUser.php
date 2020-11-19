<?php
	include('config.php');

	//$insert = "UPDATE `users6` SET `" . $columnNames[1] . "` = '" . $values[1] . "' WHERE `users6`.`" . $columnNames[0] . "` = " . $values[0] . ";";
	$insert = "UPDATE `" . $userstable . "` SET `withinCompleted` = '" . $_GET["withinCompleted"] . "' WHERE `" . $userstable . "`.`ID` = " . $_GET["id"]. ";";
	$qry = mysqli_query($connection,  $insert);
	
	if($qry) {
		echo "success";
	} else {
		echo $_POST["withinCompleted"];
		echo mysqli_error($connection);
	}
	
	
	mysqli_close($connection);
	
?>