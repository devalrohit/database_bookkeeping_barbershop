<?php

$hostName = "localhost";
$userName = "root";
$password = "";
$dbName = "my_api_android";

// Membuat koneksi ke database menggunakan mysqli
$koneksi = new mysqli($hostName, $userName, $password, $dbName);

// Memeriksa koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
} 
?>
