<?php
    session_start();

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'db_kependudukan';

    $mysqli = mysqli_connect($host, $user, $pass, $db) or die('Tidak dapat terkoneksi ke database');
?>