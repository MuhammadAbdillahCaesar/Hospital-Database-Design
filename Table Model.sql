CREATE DATABASE rumahsakit

-- 1. Membuat Tabel Pasien
CREATE TABLE pasien (
    id_pasien VARCHAR(256) PRIMARY KEY,
    nama TEXT,
    jenis_kelamin VARCHAR(256),
    golongan_darah VARCHAR(256),
    alamat VARCHAR(256),
    nomor_hp BIGINT
);


-- 2. Membuat Tabel Registrasi
CREATE TABLE registrasi (
    id_antrian VARCHAR(256) PRIMARY KEY,
    tanggal_antrian DATE,
    ubah_janji_temu BOOLEAN,
    umum BOOLEAN,
    spesialis BOOLEAN,
    inap BOOLEAN,
    id_pasien VARCHAR(256),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien)
);


-- 3. Membuat Tabel Pemeriksaan Medis
CREATE TABLE pemeriksaan_medis (
    id_pemeriksaan_medis VARCHAR (256) PRIMARY KEY,
    keluhan TEXT,
    tensi VARCHAR(256),
    suhu_badan DECIMAL(10, 2),
    berat_badan DECIMAL(10, 2),
    alergi_obat TEXT,
    alergi_makanan TEXT,
    id_antrian VARCHAR(256),
    FOREIGN KEY (id_antrian) REFERENCES registrasi (id_antrian)
);

-- 4. Membuat Tabel Kamar
CREATE TABLE kamar (
    id_kamar VARCHAR(256) PRIMARY KEY,
    nomor_kamar BIGINT,
    harga_kamar DECIMAL(10, 2),
    jenis_kamar TEXT
);


-- 5. Membuat Tabel Obat
CREATE TABLE obat (
    id_obat VARCHAR(256) PRIMARY KEY,
    nama_obat VARCHAR(256),
    kuantiti BIGINT,
    harga_obat DECIMAL(10, 2),
    jenis_obat VARCHAR(256)
);


-- 6. Membuat Tabel Resep
CREATE TABLE resep (
    id_resep VARCHAR(256) PRIMARY KEY,
    dosis BIGINT,
    instruksi_pemakaian TEXT,
    tanggal_resep DATE,
    id_pasien VARCHAR(256),
    id_obat VARCHAR(256),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien),
    FOREIGN KEY (id_obat) REFERENCES obat (id_obat)
);

-- 7. Membuat Tabel Pembayaran
CREATE TABLE pembayaran (
    id_pembayaran VARCHAR(256) PRIMARY KEY,
    tanggal_tagihan DATE,
    rekening_pembayaran BIGINT,
    nominal_pembayaran DECIMAL(10, 2),
    id_pasien VARCHAR(256),
    id_obat VARCHAR(256),
    id_kamar VARCHAR(256),
    id_resep VARCHAR(256),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien),
    FOREIGN KEY (id_obat) REFERENCES obat (id_obat),
    FOREIGN KEY (id_kamar) REFERENCES kamar (id_kamar),
    FOREIGN KEY (id_resep) REFERENCES resep (id_resep)
);


-- 8. Membuat Tabel Dokter Umum
CREATE TABLE dokter_umum (
    id_dokter_umum VARCHAR(256) PRIMARY KEY,
    nama_dokter TEXT,
    id_resep VARCHAR(256),
    id_obat VARCHAR(256),
    FOREIGN KEY (id_resep) REFERENCES resep (id_resep),
    FOREIGN KEY (id_obat) REFERENCES obat (id_obat)
);

-- 9. Membuat Tabel Perawatan
CREATE TABLE perawatan (
    id_perawatan VARCHAR(256) PRIMARY KEY,
    rawat_jalan BOOLEAN,
    rawat_inap BOOLEAN,
    spesialis BOOLEAN,
    diagnosa TEXT,
    id_pasien VARCHAR(256),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien)
);

-- 10. Membuat Tabel Dokter Spesialis
CREATE TABLE dokter_spesialis (
    id_dokter_spesialis VARCHAR(256) PRIMARY KEY,
    nama_dokter TEXT,
    jenis_spesialisasi TEXT,
    id_obat VARCHAR(256),
    id_resep VARCHAR(256),
    FOREIGN KEY (id_obat) REFERENCES obat (id_obat),
    FOREIGN KEY (id_resep) REFERENCES resep (id_resep)
);

-- 11. Membuat Tabel Jadwal Dokter
CREATE TABLE jadwal (
    id_jadwal VARCHAR(256) PRIMARY KEY,
    hari_praktek TEXT,
    jam_praktek TIME,
    id_dokter_spesialis VARCHAR(256),
    FOREIGN KEY (id_dokter_spesialis) REFERENCES dokter_spesialis (id_dokter_spesialis)
);

-- 12. Membuat Tabel Janji Temu
CREATE TABLE janji_temu (
    id_janji_temu VARCHAR(256) PRIMARY KEY,
    tanggal_janji DATE,
    id_jadwal VARCHAR(256),
    id_dokter_spesialis VARCHAR(256),
    id_pasien VARCHAR(256),
    FOREIGN KEY (id_jadwal) REFERENCES jadwal (id_jadwal),
    FOREIGN KEY (id_dokter_spesialis) REFERENCES dokter_spesialis (id_dokter_spesialis),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien)
);

-- 13. Membuat Tabel Administrasi
CREATE TABLE administrasi (
    id_administrasi VARCHAR(256) PRIMARY KEY,
    role_admin TEXT,
    id_resep VARCHAR(256),
    id_pasien VARCHAR(256),
    id_obat VARCHAR(256),
    id_kamar VARCHAR(256),
    id_jadwal VARCHAR(256),
    id_pembayaran VARCHAR(256),
    FOREIGN KEY (id_resep) REFERENCES resep (id_resep),
    FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien),
    FOREIGN KEY (id_obat) REFERENCES obat (id_obat),
    FOREIGN KEY (id_kamar) REFERENCES kamar (id_kamar),
    FOREIGN KEY (id_jadwal) REFERENCES jadwal (id_jadwal),
    FOREIGN KEY (id_pembayaran) REFERENCES pembayaran (id_pembayaran)
);