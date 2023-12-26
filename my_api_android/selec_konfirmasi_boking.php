<?php
include "koneksi.php";

$response = array();

$query1 = mysqli_query($koneksi, "SELECT * FROM boking_data ORDER BY nomor_hp DESC LIMIT 1");
$query2 = mysqli_query($koneksi, "SELECT * FROM boking_menu ORDER BY id_menu DESC LIMIT 1");
$query3 = mysqli_query($koneksi, "SELECT * FROM boking_menu_capster ORDER BY id DESC LIMIT 1");
$query4 = mysqli_query($koneksi, "SELECT * FROM boking_tanggal ORDER BY id DESC LIMIT 1");

$json = array();

// Mengambil data dari query pertama
if ($query1) {
    $row1 = mysqli_fetch_assoc($query1);
    $json['boking_data'] = $row1;
} else {
    $json['boking_data'] = null;
}

// Mengambil data dari query kedua
if ($query2) {
    $row2 = mysqli_fetch_assoc($query2);
    $json['boking_menu'] = $row2;
} else {
    $json['boking_menu'] = null;
}

// Mengambil data dari query ketiga
if ($query3) {
    $row3 = mysqli_fetch_assoc($query3);
    $json['boking_menu_capster'] = $row3;
} else {
    $json['boking_menu_capster'] = null;
}

// Mengambil data dari query keempat
if ($query4) {
    $row4 = mysqli_fetch_assoc($query4);
    $json['boking_tanggal'] = $row4;
} else {
    $json['boking_tanggal'] = null;
}

// Mengatur status kesuksesan
$response['success'] = true;
$response['message'] = "Data fetched successfully";
$response['data'] = $json;

echo json_encode($response);

mysqli_close($koneksi);
?>
