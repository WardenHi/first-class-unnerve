<?php
    include 'lib/library.php';

    $sql = 'SELECT walikota.nik, walikota.nama_walikota, kota.kode_kota, kota.nama_kota
    FROM walikota LEFT JOIN kota ON walikota.nik= kota.nik_walikota;';
    $listWalikota = $mysqli->query($sql);

    include 'views/v_index2.php';
?>