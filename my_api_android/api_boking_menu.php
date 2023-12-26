<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $menu = mysqli_real_escape_string($koneksi, $_POST['menu']);

    if (!empty($menu)) {
        $queryInsert = "INSERT INTO boking_menu (menu) VALUES ('$menu')";
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
