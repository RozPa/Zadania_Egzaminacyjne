<?php
$con=mysqli_connect("localhost","root","","ee09");

$numer = $_POST['nr'];
$ratownik1 = $_POST['rat1'];
$ratownik2 = $_POST['rat2'];
$ratownik3 = $_POST['rat3'];
$zapytanie="INSERT INTO ratownicy VALUES (NULL, $numer, '$ratownik1', '$ratownik2', '$ratownik3')";

mysqli_query($con,$zapytanie);
echo "Do bazy zostało wysłane zapytanie: $zapytanie";

mysqli_close($con)
?>