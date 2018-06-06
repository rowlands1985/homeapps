<!DOCTYPE html>                                                                 
<html>                                                                          
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type"text/css" href="/dvds.css">
</head>

<body>                                                                          
<div>                                                                           
<h1>Add new DVD</h1>

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
<input type="button" value="View all titles" onclick="window.location.href='/dvds.php'" />
</form>

<form action="" method="POST">
  <label for="title">Title</label>
  <input type="text" name="title">
  <label for="length">Length</label>
  <input type="text" name="length" placeholder="in minutes">
  <label for="genre">Genre</label>
  <select name="genre">
    <option value=""></option>
    <option value="1">Family</option>
    <option value="2">Disney</option>
    <option value="3">Romance</option>
    <option value="4">Drama</option>
    <option value="5">Sci-Fi</option>
    <option value="6">Musical</option>
    <option value="7">Fantasy</option>
    <option value="8">Comedy</option>
    <option value="9">Teen</option>
    <option value="10">Lesbian</option>
    <option value="11">Christmas</option>
    <option value="12">Action</option>
    <option value="13">RomCom</option>
    <option value="14">Horror</option>
    <option value="15">Thriller</option>
  </select>

  <input type="submit" name="submit" value="Submit">


</form>

<?php
$tit = mysqli_real_escape_string($conn, $_POST['title']);
$len = $_POST['length'];
$gen = $_POST['genre'];
if (empty($len)) {$len = "NULL";}
if (empty($gen)) {$gen = "NULL";}
if (isset($_POST['submit']))
{
$sql = "INSERT INTO DVD (Title, Length, GenreID) VALUES ('$tit', $len, $gen)";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
}
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

}

$sql = "SELECT * FROM DVD INNER JOIN Genre ON DVD.GenreID = Genre.GenreID WHERE Title = '$tit'";
$result = $conn->query($sql);

echo "<table><tr><th>Title</th><th>Length</th><th>Genre</th></tr>";
    while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["Title"]. "</td><td>" . $row["Length"]. " minutes " . "</td><td>" . $row["GenreName"]. "</td></tr>";
}
    echo "</table>";

$conn->close();


?>


</div>

</body>                                                                         
</html>
