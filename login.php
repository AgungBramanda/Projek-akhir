<?php
session_start();
require_once 'db_conn.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE user_name = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['username'] = $username;
        header("Location: home.php");
        exit;
    } else {
        echo "<p style='color:red;text-align:center;'>Username atau password salah!</p>";
        echo "<a href='index.php' style='text-align:center;display:block;'>Kembali ke Login</a>";
    }
}
?>
