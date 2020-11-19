<?php
	include('config.php');
	
	$columnNames = '';
	$values = '';
	foreach ($_POST as $columnName => $value) {
		$columnNames .= "`" . $columnName . '`,';
		$values .= "'" . $value . "',";
	}
	$columnNames = substr($columnNames, 0, -1);
	$values = substr($values, 0, -1);
	
	$insert = "INSERT INTO `" . $userstable . "` (" . $columnNames . ") VALUES (" . $values . ");";
	$qry = mysqli_query($connection,  $insert);
	
	if($qry) {
		echo "success";
	} else {
		echo mysqli_error($connection);
	}
	
	
	mysqli_close($connection);
	
?>