-- 1. Insert data ke tabel pasien dengan nomor_hp dalam tanda kutip
INSERT INTO pasien (id_pasien, nama, jenis_kelamin, golongan_darah, alamat, nomor_hp) VALUES
('P001', 'Andi Saputra', 'Laki-laki', 'O', 'Jl. Merdeka No.1, Jakarta', 081234567890),
('P002', 'Budi Santoso', 'Laki-laki', 'A', 'Jl. Kemenangan No.2, Bandung', 082234567890),
('P003', 'Citra Wati', 'Perempuan', 'B', 'Jl. Raya No.3, Surabaya', 083234567890),
('P004', 'Dina Sari', 'Perempuan', 'AB', 'Jl. Pahlawan No.4, Yogyakarta', 084234567890),
('P005', 'Eka Prasetya', 'Laki-laki', 'O', 'Jl. Sejahtera No.5, Medan', 085234567890),
('P006', 'Fenny Lia', 'Perempuan', 'A', 'Jl. Indah No.6, Malang', 086234567890),
('P007', 'Gilang Hidayat', 'Laki-laki', 'B', 'Jl. Elok No.7, Bali', 087234567890),
('P008', 'Hani Wijaya', 'Perempuan', 'AB', 'Jl. Kenangan No.8, Semarang', 088234567890),
('P009', 'Irwan Setiawan', 'Laki-laki', 'O', 'Jl. Cendana No.9, Makassar', 089234567890),
('P010', 'Joko Prabowo', 'Laki-laki', 'A', 'Jl. Harmoni No.10, Bogor', 081345678901);

-- 2. Insert data ke tabel registrasi
INSERT INTO registrasi (id_antrian, tanggal_antrian, ubah_janji_temu, umum, spesialis, inap, id_pasien) VALUES
('A001', '2024-12-01', false, true, false, false, 'P001'),
('A002', '2024-12-02', true, true, false, false, 'P002'),
('A003', '2024-12-03', false, false, true, false, 'P003'),
('A004', '2024-12-04', true, false, true, false, 'P004'),
('A005', '2024-12-05', false, true, false, true, 'P005'),
('A006', '2024-12-06', false, false, true, true, 'P006'),
('A007', '2024-12-07', true, true, false, false, 'P007'),
('A008', '2024-12-08', false, false, true, true, 'P008'),
('A009', '2024-12-09', true, true, false, true, 'P009'),
('A010', '2024-12-10', false, false, true, false, 'P010');

-- 3. Insert data ke tabel pemeriksaan_medis
INSERT INTO pemeriksaan_medis (id_pemeriksaan_medis, keluhan, tensi, suhu_badan, berat_badan, alergi_obat, alergi_makanan, id_antrian) VALUES
('PM001', 'Sakit Kepala', '120/80', 37.2, 70.5, 'Paracetamol', 'Gandum', 'A001'),
('PM002', 'Batuk', '130/85', 36.8, 65.0, 'Amoxicillin', 'Nasi', 'A002'),
('PM003', 'Demam', '140/90', 38.1, 75.0, 'Aspirin', 'Ayam', 'A003'),
('PM004', 'Nyeri Perut', '125/80', 36.5, 68.0, 'Ibuprofen', 'Susu', 'A004'),
('PM005', 'Pusing', '135/85', 37.5, 72.5, 'Paracetamol', 'Telur', 'A005'),
('PM006', 'Mual', '120/80', 36.9, 80.0, 'Antasida', 'Susu', 'A006'),
('PM007', 'Batuk Pilek', '130/85', 37.0, 60.0, 'Antibiotik', 'Kacang', 'A007'),
('PM008', 'Sesak Nafas', '140/90', 38.0, 85.0, 'Bronkodilator', 'Garam', 'A008'),
('PM009', 'Flu', '120/75', 36.7, 78.5, 'Paracetamol', 'Daging', 'A009'),
('PM010', 'Sakit Dada', '130/80', 37.3, 82.0, 'Aspirin', 'Sayur', 'A010');

-- 4. Insert data ke tabel kamar
INSERT INTO kamar (id_kamar, nomor_kamar, harga_kamar, jenis_kamar) VALUES
('K001', 101, 500000, 'VIP'),
('K002', 102, 400000, 'Kelas 1'),
('K003', 103, 300000, 'Kelas 2'),
('K004', 104, 250000, 'Kelas 3'),
('K005', 105, 450000, 'VIP'),
('K006', 106, 350000, 'Kelas 1'),
('K007', 107, 300000, 'Kelas 2'),
('K008', 108, 200000, 'Kelas 3'),
('K009', 109, 550000, 'VIP'),
('K010', 110, 400000, 'Kelas 1');

-- 5. Insert data ke tabel obat
INSERT INTO obat (id_obat, nama_obat, kuantiti, harga_obat, jenis_obat) VALUES
('O001', 'Paracetamol', 100, 5000, 'Obat Penurun Demam'),
('O002', 'Amoxicillin', 200, 15000, 'Antibiotik'),
('O003', 'Ibuprofen', 50, 10000, 'Obat Anti Nyeri'),
('O004', 'Aspirin', 80, 12000, 'Obat Penghilang Sakit'),
('O005', 'Antasida', 120, 8000, 'Obat Lambung'),
('O006', 'Bronkodilator', 60, 25000, 'Obat Pernapasan'),
('O007', 'Antibiotik', 150, 20000, 'Antibiotik'),
('O008', 'Suplemen', 180, 35000, 'Vitamin'),
('O009', 'Obat Batuk', 200, 7500, 'Obat Batuk'),
('O010', 'Obat Pusing', 50, 11000, 'Obat Penanganan Migrain');

-- 6. Insert data ke tabel resep
INSERT INTO resep (id_resep, dosis, instruksi_pemakaian, tanggal_resep, id_pasien, id_obat) VALUES
('R001', 3, 'Tiga kali sehari setelah makan', '2024-12-01', 'P001', 'O001'),
('R002', 2, 'Dua kali sehari sebelum makan', '2024-12-02', 'P002', 'O002'),
('R003', 1, 'Satu kali sehari sebelum tidur', '2024-12-03', 'P003', 'O003'),
('R004', 3, 'Tiga kali sehari setelah makan', '2024-12-04', 'P004', 'O004'),
('R005', 2, 'Dua kali sehari setelah makan', '2024-12-05', 'P005', 'O005'),
('R006', 2, 'Dua kali sehari sebelum makan', '2024-12-06', 'P006', 'O006'),
('R007', 1, 'Satu kali sehari setelah makan', '2024-12-07', 'P007', 'O007'),
('R008', 3, 'Tiga kali sehari setelah makan', '2024-12-08', 'P008', 'O008'),
('R009', 2, 'Dua kali sehari setelah makan', '2024-12-09', 'P009', 'O009'),
('R010', 1, 'Satu kali sehari setelah makan', '2024-12-10', 'P010', 'O010');

-- 7. Insert data ke tabel pembayaran dengan nominal_pembayaran dihitung sebagai harga_kamar + harga_obat
INSERT INTO pembayaran (id_pembayaran, tanggal_tagihan, rekening_pembayaran, nominal_pembayaran, id_pasien, id_obat, id_kamar, id_resep) VALUES
('PB001', '2024-12-01', 123456789, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K001') + (SELECT harga_obat FROM obat WHERE id_obat = 'O001'), 
    'P001', 'O001', 'K001', 'R001'),
('PB002', '2024-12-02', 123456790, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K002') + (SELECT harga_obat FROM obat WHERE id_obat = 'O002'), 
    'P002', 'O002', 'K002', 'R002'),
('PB003', '2024-12-03', 123456791, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K003') + (SELECT harga_obat FROM obat WHERE id_obat = 'O003'), 
    'P003', 'O003', 'K003', 'R003'),
('PB004', '2024-12-04', 123456792, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K004') + (SELECT harga_obat FROM obat WHERE id_obat = 'O004'), 
    'P004', 'O004', 'K004', 'R004'),
('PB005', '2024-12-05', 123456793, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K005') + (SELECT harga_obat FROM obat WHERE id_obat = 'O005'), 
    'P005', 'O005', 'K005', 'R005'),
('PB006', '2024-12-06', 123456794, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K006') + (SELECT harga_obat FROM obat WHERE id_obat = 'O006'), 
    'P006', 'O006', 'K006', 'R006'),
('PB007', '2024-12-07', 123456795, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K007') + (SELECT harga_obat FROM obat WHERE id_obat = 'O007'), 
    'P007', 'O007', 'K007', 'R007'),
('PB008', '2024-12-08', 123456796, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K008') + (SELECT harga_obat FROM obat WHERE id_obat = 'O008'), 
    'P008', 'O008', 'K008', 'R008'),
('PB009', '2024-12-09', 123456797, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K009') + (SELECT harga_obat FROM obat WHERE id_obat = 'O009'), 
    'P009', 'O009', 'K009', 'R009'),
('PB010', '2024-12-10', 123456798, 
    (SELECT harga_kamar FROM kamar WHERE id_kamar = 'K010') + (SELECT harga_obat FROM obat WHERE id_obat = 'O010'), 
    'P010', 'O010', 'K010', 'R010');

-- 8. Insert data ke tabel dokter_umum
INSERT INTO dokter_umum (id_dokter_umum, nama_dokter, id_resep, id_obat) VALUES
('DU001', 'Dr. Andi', 'R001', 'O001'),
('DU002', 'Dr. Budi', 'R002', 'O002'),
('DU003', 'Dr. Citra', 'R003', 'O003'),
('DU004', 'Dr. Dina', 'R004', 'O004'),
('DU005', 'Dr. Eka', 'R005', 'O005'),
('DU006', 'Dr. Fenny', 'R006', 'O006'),
('DU007', 'Dr. Gilang', 'R007', 'O007'),
('DU008', 'Dr. Hani', 'R008', 'O008'),
('DU009', 'Dr. Irwan', 'R009', 'O009'),
('DU010', 'Dr. Joko', 'R010', 'O010');

-- 9. Insert data ke tabel perawatan
INSERT INTO perawatan (id_perawatan, rawat_jalan, rawat_inap, spesialis, diagnosa, id_pasien) VALUES
('PW001', true, false, false, 'Sakit Kepala', 'P001'),
('PW002', true, false, false, 'Batuk', 'P002'),
('PW003', false, true, false, 'Demam', 'P003'),
('PW004', true, false, false, 'Nyeri Perut', 'P004'),
('PW005', true, false, false, 'Pusing', 'P005'),
('PW006', false, true, false, 'Mual', 'P006'),
('PW007', true, false, false, 'Batuk Pilek', 'P007'),
('PW008', false, true, false, 'Sesak Nafas', 'P008'),
('PW009', true, false, false, 'Flu', 'P009'),
('PW010', false, true, false, 'Sakit Dada', 'P010');

-- 10. Insert data ke tabel dokter_spesialis
INSERT INTO dokter_spesialis (id_dokter_spesialis, nama_dokter, jenis_spesialisasi, id_obat, id_resep) VALUES
('DS001', 'Dr. Sarah', 'Kardiologi', 'O001', 'R001'),
('DS002', 'Dr. Anton', 'Dermatologi', 'O002', 'R002'),
('DS003', 'Dr. Linda', 'Neurologi', 'O003', 'R003'),
('DS004', 'Dr. Rudi', 'Penyakit Dalam', 'O004', 'R004'),
('DS005', 'Dr. Vina', 'Ginekologi', 'O005', 'R005'),
('DS006', 'Dr. Agung', 'Anak', 'O006', 'R006'),
('DS007', 'Dr. Lita', 'Ortopedi', 'O007', 'R007'),
('DS008', 'Dr. Paul', 'THT', 'O008', 'R008'),
('DS009', 'Dr. Hana', 'Bedah', 'O009', 'R009'),
('DS010', 'Dr. Joko', 'Urologi', 'O010', 'R010');

-- 11. Insert data ke tabel jadwal
INSERT INTO jadwal (id_jadwal, hari_praktek, jam_praktek, id_dokter_spesialis) VALUES
('J001', 'Senin', '08:00:00', 'DS001'),
('J002', 'Selasa', '10:00:00', 'DS002'),
('J003', 'Rabu', '14:00:00', 'DS003'),
('J004', 'Kamis', '09:00:00', 'DS004'),
('J005', 'Jumat', '13:00:00', 'DS005'),
('J006', 'Sabtu', '16:00:00', 'DS006'),
('J007', 'Minggu', '08:00:00', 'DS007'),
('J008', 'Senin', '10:00:00', 'DS008'),
('J009', 'Selasa', '14:00:00', 'DS009'),
('J010', 'Rabu', '09:00:00', 'DS010');

-- 12. Insert data ke tabel janji_temu
INSERT INTO janji_temu (id_janji_temu, tanggal_janji, id_jadwal, id_dokter_spesialis, id_pasien) VALUES
('JT001', '2024-12-01', 'J001', 'DS001', 'P001'),
('JT002', '2024-12-02', 'J002', 'DS002', 'P002'),
('JT003', '2024-12-03', 'J003', 'DS003', 'P003'),
('JT004', '2024-12-04', 'J004', 'DS004', 'P004'),
('JT005', '2024-12-05', 'J005', 'DS005', 'P005'),
('JT006', '2024-12-06', 'J006', 'DS006', 'P006'),
('JT007', '2024-12-07', 'J007', 'DS007', 'P007'),
('JT008', '2024-12-08', 'J008', 'DS008', 'P008'),
('JT009', '2024-12-09', 'J009', 'DS009', 'P009'),
('JT010', '2024-12-10', 'J010', 'DS010', 'P010');

-- 13. Insert data ke tabel administrasi
INSERT INTO administrasi (id_administrasi, role_admin, id_resep, id_pasien, id_obat, id_kamar, id_jadwal, id_pembayaran) VALUES
('A001', 'Administrator', 'R001', 'P001', 'O001', 'K001', 'J001', 'PB001'),
('A002', 'Administrator', 'R002', 'P002', 'O002', 'K002', 'J002', 'PB002'),
('A003', 'Administrator', 'R003', 'P003', 'O003', 'K003', 'J003', 'PB003'),
('A004', 'Administrator', 'R004', 'P004', 'O004', 'K004', 'J004', 'PB004'),
('A005', 'Administrator', 'R005', 'P005', 'O005', 'K005', 'J005', 'PB005'),
('A006', 'Administrator', 'R006', 'P006', 'O006', 'K006', 'J006', 'PB006'),
('A007', 'Administrator', 'R007', 'P007', 'O007', 'K007', 'J007', 'PB007'),
('A008', 'Administrator', 'R008', 'P008', 'O008', 'K008', 'J008', 'PB008'),
('A009', 'Administrator', 'R009', 'P009', 'O009', 'K009', 'J009', 'PB009'),
('A010', 'Administrator', 'R010', 'P010', 'O010', 'K010', 'J010', 'PB010');


