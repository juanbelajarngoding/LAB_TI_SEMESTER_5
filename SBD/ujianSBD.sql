CREATE DATABASE juansamuelchristopher_50421704;

CREATE TABLE mahasiswa (
	NPM VARCHAR(8) not null primary key,
	nama VARCHAR(30),
	alamat VARCHAR(50),
	kota VARCHAR(30)
);
INSERT INTO mahasiswa (NPM, nama, alamat, kota)
VALUES
('50421704', 'Juan Samuel Christopher', 'Perumahan Tambun', 'Kab.Tambun'),
('50421235', 'Audya Wirnu', 'Perumahan Ngawi', 'Bogor'),
('50411111', 'Markel Jurnal', 'Perumahan Kp.China', 'Bali'),
('50421197', 'Arief Puury', 'Perumahan FNAF', 'Jakarta'),
('50424623', 'Alif Kairing', 'Perumahan Rumput midlane', 'Lenofdon'),
('50421700', 'Dodi Omar Tambun', 'Perumahan Palo', 'Decendant');
SELECT * FROM mahasiswa ORDER BY NPM DESC;
SELECT * FROM mahasiswa;

ALTER TABLE mahasiswa
DROP COLUMN domisili;

ALTER TABLE mahasiswa
RENAME COLUMN kota to domisili;
SELECT * FROM mahasiswa WHERE LEFT (nama, 1) = 'A';


CREATE TABLE nilai (
	NPM VARCHAR(8)not null primary key,
	kode_mk VARCHAR(10),
	Nilai INT
);
INSERT INTO nilai (NPM, kode_mk, nilai)
VALUES
('50421704', 'TI23IA01', '96'),
('50421235', 'TI23IA02', '88'),
('50411111', 'TI23IA03', '85'),
('50421197', 'TI23IA33', '90'),
('50424623', 'TI23IA22', '85'),
('50421700', 'TI23IA11', '92');
SELECT * FROM nilai ORDER BY NPM DESC;
SELECT * FROM nilai;

CREATE TABLE matakuliah (
	kode_mk VARCHAR(8) not null primary key,
	nama_mk VARCHAR(30),
	semester INT,
	sks INT
);
INSERT INTO matakuliah (kode_mk, nama_mk, semester, sks)
VALUES
('TI23IA01', 'Kecerdasan Buatan', 6, 2),
('TI23IA02', 'Sistem Basis Data', 6, 2),
('TI23IA03', 'Grafik Komputer', 6, 2),
('TI23IA33', 'Jaringan Komputer', 6, 2),
('TI23IA22', 'Pemrograman Web', 6, 2),
('TI23IA11', 'Sistem Komputer', 6, 2);
SELECT * FROM matakuliah ORDER BY kode_mk DESC;
SELECT * FROM matakuliah;

select * from mahasiswa
inner join nilai on mahasiswa.npm = nilai.npm;

select m.npm, m,nama, n.kode_mk, n.nilai
from mahasiswa m left join nilai n 
on m.npm = n.npm;

select n.kode_mk, n.nilai, m.npm, m.nama
from nilai n left join mahasiswa m
on n.npm = m.nama;

select n.kode_mk, n.nilai, m.npm, m.nama
from nilai n right join mahasiswa m
on n.npm = m.nama;