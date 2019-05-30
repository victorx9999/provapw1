<?php

session_start();
$login = $_POST['login'] ?? null;
$password = $_POST['password'] ?? null;

if(logarUsuario($login, $password)){
  $_SESSION['auth'] = true;
  $_SESSION['usuario'] = $login;
  header('Location: home.php');
  exit();
} else {
  header('Location: login.html');
  exit();
}

function logarUsuario($login, $password){
  try{
    $pdo = new PDO('mysql:host=mysql;dbname=egressos;port=3306','root','123');
    $sql = 'SELECT * FROM usuario WHERE user = :usuario AND pass = :senha';
    $result = $pdo->prepare($sql);
    
    $result->bindValue(":usuario", $login);
    $result->bindValue(":senha", $password);
    $result->execute();

    $row = $result->rowCount();
    return $row;
  }
  catch(Exception $e){
    echo $e->getMessage();
  }
}

