<?php
$conn = mysqli_connect(getenv('DB_HOST'), getenv('DB_USER'), getenv('DB_PASSWORD'), getenv('DB_NAME'));
if ($conn){
echo "Sve Radi!";
}
else{
echo "Neradi! Zbog: ".mysql_error();
}
mysqli_close($conn);
?>
