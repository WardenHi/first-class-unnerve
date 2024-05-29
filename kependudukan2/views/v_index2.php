<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    <title>DATABASE</title>
    <h2>Menampilkan nama walikota beserta kota yang dipimpinnya</h2>
    <table border="1">
        <thead>
            <tr>
                <th>#</th>
                <th>NIK</th>
                <th>Nama Walikota</th>
                <th>Kode Kota</th>
                <th>Nama Kota</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $i = 1;
                while ($walikota = $listWalikota->fetch_array()) {
            ?>
            <tr>
                <td><?= $i++ ?></td>
                <td><?= $walikota['nik'] ?></td>
                <td><?= $walikota['nama_walikota'] ?></td>
                <td><?= $walikota['kode_kota'] ?></td>
                <td><?= $walikota['nama_kota']?></td>
            </tr>
            <?php } ?>
        </tbody>
</html>