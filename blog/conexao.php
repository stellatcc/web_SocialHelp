<?php

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "blog_bd";

try{
    $pdo = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $err) {
    echo "Houve um erro no banco de dados" . $err->getMessage();
    exit;
}

?>