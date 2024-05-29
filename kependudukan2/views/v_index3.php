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
    <h2>Menampilkan nama kecamatan dan kota yang ditempatinya</h2>
    <table border="1">
        <thead>
            <tr>
                <th>#</th>
                <th>Kode Kecamatan</th>
                <th>Nama Kecamatan</th>
                <th>Nama Kota</th>
                <th>Kode Kota</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $i = 1;
                while ($kecamatan = $listKecamatan->fetch_array()) {
            ?>
            <tr>
                <td><?= $i++ ?></td>
                <td><?= $kecamatan['kode_kecamatan'] ?></td>
                <td><?= $kecamatan['nama_kecamatan'] ?></td>
                <td><?= $kecamatan['nama_kota'] ?></td>
                <td><?= $kecamatan['kode_kota']?></td>
            </tr>
            <?php } ?>
        </tbody>
</html>