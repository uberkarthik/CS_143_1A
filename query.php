i<?php

$db_connection = mysql_connect("localhost", "cs143", "");
$query =  $_POST["message"];
mysql_select_db("TEST", $db_connection);
$rs = mysql_query($query, $db_connection);

print "<html>";
print "<body>"; 

print "<p> We got the message $query </p>";

while($row = mysql_fetch_row($rs))
{
	foreach ($row as $value){

		print "$value	";

	} 

	print "<br><br>";

}

print "</body>";
print "</html>";

mysql_close($db_connection);

?> 
