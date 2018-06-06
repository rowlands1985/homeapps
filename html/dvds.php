<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type"text/css" href="/dvds.css">
</head>

<body>                                                                          
<div>      

<h1>DVDs</h1>

<?php

$servername = "localhost";
$username = "";
$password = "";
$database = "DVDs";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<form>                                                                               
<input type="button" value="Search DVDs" onclick="window.location.href='/index.php'" />
<input type="button" value="Add new" onclick="window.location.href='/new.php'" />
</form>

<?php
$sql = "SELECT Title, Length FROM DVD ORDER BY Title";
$result = $conn->query($sql);

if(!$result = $conn->query($sql)){
    die('There was an error running the query [' . $conn->error . ']');
}

if ($result->num_rows > 0) {
    //output data of each row
  echo "<table><tr><th>Title</th><th>Length</th></tr>";
    while($row = $result->fetch_assoc()) {
  echo "<tr><td>" . $row["Title"]. "</td><td>" . $row["Length"]. " minutes " . "</td></tr>";
}
    echo "</table>";


} else {
    echo "0 results";
}

$conn->close();
?>

</div>
</body>
</html>
