<?php
include 'koneksi.php'; // Pastikan ini adalah file yang ingin Anda sertakan

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = $_POST['nama'];
    $nomor_hp = $_POST['nomor_hp'];
    

    $queryRegister = "SELECT * FROM boking_data WHERE nomor_hp = '".$nomor_hp."'";
    $msql = mysqli_query($koneksi, $queryRegister);
    $result = mysqli_num_rows($msql);

    if (!empty($nama) && !empty($nomor_hp) ) {
        if ($result == 0) {
            $regis = "INSERT INTO boking_data (nama, nomor_hp)
                      VALUES ('$nama','$nomor_hp')";
            $msqlRegis = mysqli_query($koneksi, $regis);

            if ($msqlRegis) {
                echo "Pendaftaran berhasil";
            } else {
                echo "Gagal melakukan pendaftaran";
            }
        } else {
            echo "Username sudah digunakan";
        }
    } else {
        echo "Semua data harus diisi lengkap";
    }
}
?>
