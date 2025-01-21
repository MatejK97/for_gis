<?php
$conn = mysqli_connect('db', 'dbadmin', 'SomePasswordForDBUser', 'somedb');
if ($conn){
echo "Sve Radi!";
}
else{
echo "failed to connect server: ".mysql_error();
}
mysqli_close($conn);
?>





