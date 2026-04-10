<!DOCTYPE html>
<html>
<head>
    <title>Form Input Data Mahasiswa</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>Form Input Data Mahasiswa</h2>

    <form action="prosesMahasiswa.jsp" method="POST">

        <label>NIM:</label>
        <input type="text" name="nim" required>

        <label>Nama:</label>
        <input type="text" name="nama" required>

        <label>Program Studi:</label>
        <select name="prodi">
            <option>Teknik Informatika</option>
            <option>Sistem Informasi</option>
        </select>

        <label>Jenis Kelamin:</label>
        <input type="radio" name="jk" value="Laki-laki"> Laki-laki
        <input type="radio" name="jk" value="Perempuan"> Perempuan

        <label>Hobi:</label>
        <input type="checkbox" name="hobi" value="Ngoding"> Ngoding
        <input type="checkbox" name="hobi" value="Motoran"> Motoran
        <input type="checkbox" name="hobi" value="Olahraga"> Olahraga

        <label>Alamat:</label>
        <textarea name="alamat"></textarea>

        <button type="submit" class="btn submit">Simpan</button>
        <button type="reset" class="btn reset">Reset</button>

    </form>
</div>

</body>
</html>