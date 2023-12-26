<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selected_date = mysqli_real_escape_string($koneksi, $_POST['selected_date']);
    $selected_time = mysqli_real_escape_string($koneksi, $_POST['selected_time']);

    echo "Selected Date: $selected_date"; // Tambahkan pesan echo ini
    echo "Selected Time: $selected_time"; // dan ini untuk memeriksa nilai yang diterima

    if (!empty($selected_date) && !empty($selected_time)) {
        $queryInsert = "INSERT INTO boking_tanggal (selected_date, selected_time) VALUES ('$selected_date', '$selected_time')";
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
