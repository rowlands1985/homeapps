<!DOCTYPE html>                                                                      
<html>                                                                               
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type"text/css" href="/dvds.css">
</head>

<body>                                                                               
<div>                                                                                     
<h1>DVD Database</h1>                                                                        
									     
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
                                                                                     
$sql = "SELECT COUNT(DVDID) FROM DVD";                               
$result = $conn->query($sql);                                                        
                                                                                     
if(!$result = $conn->query($sql)){                                                   
    die('There was an error running the query [' . $conn->error . ']');              
}                                                                                    
                                                                                     
if ($result->num_rows > 0) {                                                         
    //output data of each row                                                        
    while($row = $result->fetch_assoc()) {                                           
        echo "<p>" . "You own " . $row["COUNT(DVDID)"]. " DVDs " . "<p>";             
    }                                                                                
} else {                                                                             
    echo "0 results";                                                                
}                                                                                    
                                                                                     
?>                                                                                   

<form>
<input type="button" value="View all titles" onclick="window.location.href='/dvds.php'" />
<input type="button" value="Add new" onclick="window.location.href='/new.php'" />
</form>
                                                                                     
<form method="POST">
  <label for="length">Length</label>
  <input type="text" name="length" placeholder="Max length in minutes">
  <label for="genre">Genre</label>
  <select name="genre">
      <option value="">Choose a genre</option>
      <option value="Family">Family</option>
      <option value="Disney">Disney</option>
      <option value="Romance">Romance</option>
      <option value="Drama">Drama</option>
      <option value="Sci-Fi">Sci-Fi</option>
      <option value="Musical">Musical</option>
      <option value="Fantasy">Fantasy</option>
      <option value="Comedy">Comedy</option>
      <option value="Teen">Teen</option>
      <option value="Lesbian">Lesbian</option>
      <option value="Christmas">Christmas</option>
      <option value="Action">Action</option>
      <option value="RomCom">RomCom</option>
      <option value="Horror">Horror</option>
      <option value="Thriller">Thiller</option>
    </select>

   <input type="submit" value="Submit">
</form>

<?php
$gen = $_POST['genre'];

$len = $_POST['length'];

if (empty($gen)) {
    $sql = "SELECT Title, Length FROM DVD INNER JOIN Genre ON DVD.GenreID = Genre.GenreID WHERE Length<='$len' ORDER BY Title";
}

elseif (empty($len)) {
    $sql = "SELECT Title, Length FROM DVD INNER JOIN Genre ON DVD.GenreID = Genre.GenreID WHERE GenreName='$gen' ORDER BY Title";
}

else {
    $sql = "SELECT Title, Length FROM DVD INNER JOIN Genre ON DVD.GenreID = Genre.GenreID WHERE GenreName='$gen' AND Length<='$len' ORDER BY Title";
}

$result = $conn->query($sql);

echo "<table><tr><th>Title</th><th>Length</th></tr>";
    while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["Title"]. "</td><td>" . $row["Length"]. " minutes " . "</td></tr>";
}
    echo "</table>";

$conn->close();
?>
</div>

</body>                                                                              
</html>                                                                              

