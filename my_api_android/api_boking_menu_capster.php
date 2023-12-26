<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $capster = mysqli_real_escape_string($koneksi, $_POST['capster']);

    if (!empty($capster)) {
        $queryInsert = "INSERT INTO boking_menu_capster (capster) VALUES ('$capster')";
        $resultInsert = mysqli_query($koneksi, $queryInsert);

        if ($resultInsert) {
            echo "Pendaftaran berhasil";
        } else {
            echo "Gagal melakukan pendaftaran: " . mysqli_error($koneksi);
        }
    } else {
        echo "Semua data harus diisi lengkap";
    }
}
?>
