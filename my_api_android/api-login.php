<?php
include 'koneksi.php';

// Gunakan metode POST untuk keamanan
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Melakukan pengecekan apakah variabel username dan password kosong
    if (!empty($username) && !empty($password)) {
        // Gunakan prepared statement untuk mencegah SQL injection
        $cek = "SELECT * FROM user WHERE username = ? AND password = ?";
        $stmt = mysqli_prepare($koneksi, $cek);
        
        if ($stmt) {
            mysqli_stmt_bind_param($stmt, "ss", $username, $password);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            $num_rows = mysqli_num_rows($result);
            
            if ($num_rows == 1) {
                echo "Selamat Datang"; // Pengguna ditemukan
            } else {
                echo "Login Gagal"; // Tidak ada pengguna yang cocok
            }
        } else {
            echo "Kesalahan pada query: " . mysqli_error($koneksi);
        }
    } else {
        echo "Ada data yang masih kosong";
    }
}
?>
