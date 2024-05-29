<?php
    include 'lib/library.php';

    $sql = 'SELECT penduduk.nama, penduduk.nomor_kecamatan, penduduk.agama, kecamatan.nama_kecamatan
       FROM penduduk, kecamatan
       WHERE penduduk.nomor_kecamatan = kecamatan.kode_kecamatan;';
    $listPenduduk = $mysqli->query($sql);

    include 'views/v_index1.php';
?>