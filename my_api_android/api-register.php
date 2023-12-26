<?php
include 'koneksi.php'; // Pastikan ini adalah file yang ingin Anda sertakan

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $alamat = $_POST['alamat'];

    $queryRegister = "SELECT * FROM user WHERE username = '".$username."'";
    $msql = mysqli_query($koneksi, $queryRegister);
    $result = mysqli_num_rows($msql);

    if (!empty($username) && !empty($password) && !empty($alamat)) {
        if ($result == 0) {
            $regis = "INSERT INTO user (username, password, alamat)
                      VALUES ('$username','$password','$alamat')";
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
