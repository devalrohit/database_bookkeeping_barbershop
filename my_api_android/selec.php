<?php
include "koneksi.php";

$response = array();

$query = mysqli_query($koneksi, "SELECT * FROM user ORDER BY id_user DESC LIMIT 1");

if ($query) {
    $json = array();

    while ($row = mysqli_fetch_assoc($query)) {
        $json[] = $row;
    }

    $response['success'] = true;
    $response['message'] = "Data fetched successfully";
    $response['data'] = $json;
} else {
    $response['success'] = false;
    $response['message'] = "Failed to fetch data";
}

echo json_encode($response);

mysqli_close($koneksi);
?>
