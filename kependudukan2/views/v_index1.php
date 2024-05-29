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
    <h2>Menampilkan nama penduduk dan kecamatan yang ditinggali nya</h2>
    <table border="1">
        <thead>
            <tr>
                <th>#</th>
                <th>Nama Lengkap</th>
                <th>Nomor Kecamatan</th>
                <th>Agama</th>
                <th>Nama Kecamatan</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                $i = 1;
                while ($penduduk = $listPenduduk->fetch_array()) {
            ?>
            <tr>
                <td><?= $i++ ?></td>
                <td><?= $penduduk['nama'] ?></td>
                <td><?= $penduduk['nomor_kecamatan'] ?></td>
                <td><?= $penduduk['agama'] ?></td>
                <td><?= $penduduk['nama_kecamatan']?></td>
            </tr>
            <?php } ?>
        </tbody>
</html>