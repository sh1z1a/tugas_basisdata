-- INNER JOIN (kategori + materi)
SELECT materi.id, materi.kode, materi.nama, materi.deskripsi, materi.durasi, materi.biaya,
kategori.nama AS kat_materi
FROM materi
INNER JOIN kategori ON materi.kategori_id = kategori.id;

-- INNER JOIN (kategori + materi + pengajar + peserta + penjadwalan_kelas)
SELECT penjadwalan_kelas.id, penjadwalan_kelas.kelas, 
       materi.nama AS nama_materi,
       pengajar.nama AS nama_pengajar,
       peserta.nama AS nama_peserta
FROM penjadwalan_kelas
    INNER JOIN materi ON materi.id = penjadwalan_kelas.materi_id
    INNER JOIN pengajar ON pengajar.id = penjadwalan_kelas.pengajar_id
    INNER JOIN peserta ON peserta.id = penjadwalan_kelas.peserta_id

-- INNER JOIN (kategori + materi + pengajar + peserta + penjadwalan_kelas)
SELECT pk.id, pk.kelas, 
       mtr.nama AS nm_mtr,
       pgj.nama AS nama_pgj,
       psrt.nama AS nama_psrt
FROM penjadwalan_kelas AS pk
    INNER JOIN materi AS mtr ON mtr.id = pk.materi_id
    INNER JOIN pengajar AS pgj ON pgj.id = pk.pengajar_id
    INNER JOIN peserta AS psrt ON psrt.id = pk.peserta_id




