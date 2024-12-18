-- Tabel users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL
);

-- Tabel barang
CREATE TABLE IF NOT EXISTS barang (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_barang VARCHAR(100) NOT NULL,
    kategori VARCHAR(50),
    harga DECIMAL(10,2) NOT NULL,
    stok INT NOT NULL
);

-- Tambahkan data contoh pada tabel users, hanya jika belum ada data dengan user_name 'Bagus'
INSERT IGNORE INTO users (user_name, password, name) VALUES
('Bagus', 'Naren', 'Bagus Naren');

-- Tambahkan data contoh pada tabel barang
INSERT INTO barang (nama_barang, kategori, harga, stok) VALUES
('Buku Tulis', 'Alat Tulis', 5000.00, 100),
('Pensil', 'Alat Tulis', 2000.00, 150),
('Penghapus', 'Alat Tulis', 1500.00, 200),
('Pulpen', 'Alat Tulis', 3000.00, 120),
('Tipe-x', 'Alat Tulis', 4000.00, 50);