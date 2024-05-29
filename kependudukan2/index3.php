<?php
    include 'lib/library.php';

    $sql = 'SELECT kecamatan.kode_kecamatan, kecamatan.nama_kecamatan, kota.nama_kota, kota.kode_kota
    FROM kota NATURAL JOIN kecamatan;';
    $listKecamatan = $mysqli->query($sql);

    include 'views/v_index3.php';
?>