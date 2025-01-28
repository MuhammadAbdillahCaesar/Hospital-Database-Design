-- TAGIHAN OBAT DAN RAWAT --

SELECT 
    pasien.id_pasien, 
    pasien.nama, 
    obat.nama_obat, 
    resep.dosis, 
    resep.instruksi_pemakaian, 
    kamar.nomor_kamar,
    obat.harga_obat,
    kamar.harga_kamar,
    pembayaran.nominal_pembayaran,
    pembayaran.id_pembayaran, 
    perawatan.rawat_inap, 
    perawatan.rawat_jalan, 
    CASE 
        WHEN perawatan.rawat_inap = TRUE THEN pembayaran.nominal_pembayaran
        ELSE NULL
    END AS nominal_pembayaran_inap,
    CASE 
        WHEN perawatan.rawat_jalan = TRUE THEN pembayaran.nominal_pembayaran
        ELSE NULL
    END AS nominal_pembayaran_jalan
FROM 
    pembayaran
JOIN pasien ON pembayaran.id_pasien = pasien.id_pasien
JOIN obat ON pembayaran.id_obat = obat.id_obat
JOIN resep ON pembayaran.id_resep = resep.id_resep
JOIN perawatan ON pasien.id_pasien = perawatan.id_pasien
JOIN kamar ON pembayaran.id_kamar = kamar.id_kamar
WHERE 
    perawatan.rawat_inap = TRUE OR perawatan.rawat_jalan = TRUE
ORDER BY 
    perawatan.rawat_inap DESC, 
    pasien.id_pasien;


-- LAPORAN --

SELECT 
    pembayaran.id_pembayaran, 
    perawatan.rawat_inap, 
    perawatan.rawat_jalan, 
    CASE 
        WHEN perawatan.rawat_inap = TRUE THEN pembayaran.nominal_pembayaran
        ELSE NULL
    END AS nominal_pembayaran_inap,
    CASE 
        WHEN perawatan.rawat_jalan = TRUE THEN pembayaran.nominal_pembayaran
        ELSE NULL
    END AS nominal_pembayaran_jalan
FROM 
    pembayaran
JOIN pasien ON pembayaran.id_pasien = pasien.id_pasien
JOIN obat ON pembayaran.id_obat = obat.id_obat
JOIN resep ON pembayaran.id_resep = resep.id_resep
JOIN kamar ON pembayaran.id_kamar = kamar.id_kamar
JOIN perawatan ON pasien.id_pasien = perawatan.id_pasien
WHERE 
    perawatan.rawat_inap = TRUE OR perawatan.rawat_jalan = TRUE
ORDER BY 
    perawatan.rawat_inap DESC, 
    pasien.id_pasien;

-- RESEP --

SELECT 
    resep.id_resep,
    resep.dosis,
    resep.instruksi_pemakaian,
    resep.tanggal_resep,
    pasien.id_pasien,
    pasien.nama,
    pasien.nomor_hp,
    obat.nama_obat,
    obat.jenis_obat
FROM 
    resep
JOIN 
    pasien ON resep.id_pasien = pasien.id_pasien
JOIN 
    obat ON resep.id_obat = obat.id_obat

SELECT 
    resep.id_resep,
    resep.dosis,
    resep.instruksi_pemakaian,
    resep.tanggal_resep,
    pasien.id_pasien,
    pasien.nama,
    pasien.nomor_hp,
    obat.nama_obat,
    obat.jenis_obat
FROM 
    resep
JOIN 
    pasien ON resep.id_pasien = pasien.id_pasien
JOIN 
    obat ON resep.id_obat = obat.id_obat
JOIN 
    perawatan ON pasien.id_pasien = perawatan.id_pasien
WHERE 
    perawatan.rawat_jalan = TRUE;

SELECT 
    resep.id_resep,
    resep.dosis,
    resep.instruksi_pemakaian,
    resep.tanggal_resep,
    pasien.id_pasien,
    pasien.nama,
    pasien.nomor_hp,
    obat.nama_obat,
    obat.jenis_obat
FROM 
    resep
JOIN 
    pasien ON resep.id_pasien = pasien.id_pasien
JOIN 
    obat ON resep.id_obat = obat.id_obat
JOIN 
    perawatan ON pasien.id_pasien = perawatan.id_pasien
WHERE 
    perawatan.rawat_inap = TRUE;

SELECT 
    resep.id_resep,
    resep.dosis,
    resep.instruksi_pemakaian,
    resep.tanggal_resep,
    pasien.id_pasien,
    pasien.nama,
    pasien.nomor_hp,
    obat.nama_obat,
    obat.jenis_obat
FROM 
    resep
JOIN 
    pasien ON resep.id_pasien = pasien.id_pasien
JOIN 
    obat ON resep.id_obat = obat.id_obat
JOIN 
    perawatan ON pasien.id_pasien = perawatan.id_pasien
WHERE 
    perawatan.spesialis = TRUE;