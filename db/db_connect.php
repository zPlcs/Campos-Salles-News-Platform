<?php

$servername = "localhost"; // Geralmente 'localhost'
$username = "root"; // Seu nome de usuário MySQL
$password = ""; // Sua senha MySQL
$dbname = "cs_newsletter"; // Nome do banco de dados

// Criar a conexão
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
