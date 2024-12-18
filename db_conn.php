<?php
// db_conn.php
$servername = "sql111.infinityfree.com";
$username = "if0_37625305"; // sesuaikan dengan username database Anda
$password = "mnrUL0DST3"; // sesuaikan dengan password database Anda
$dbname = "if0_37625305_transaksi"; // sesuaikan dengan nama database Anda

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
