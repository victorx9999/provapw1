<?php
session_start();
  if(!isset($_SESSION['auth']) || $_SESSION['auth'] === false)
    header('Location: login.html');
  
    $pdo = new PDO('mysql:host=mysql;dbname=egressos;port=3306','root','123');
    $sql = 'SELECT * FROM egresso';
    $result = $pdo->query($sql);
    $rows = $result->fetchAll(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta charset="UTF-8">
  <title>Egressos</title>
  <link rel="stylesheet" href="home.css">
</head>

<body>
  <h3>Olá <?php echo $_SESSION['usuario'];?> !</h3>
  <a href="logout.php">Logout</a>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Linkedin</th>
        <th>Curso</th>
        <th>Campus</th>
        
      </tr>
    </thead>
    <tbody>
      <?php 
        for($i = 0; $i < sizeof($rows); $i++){
          echo '<tr>';
          echo '<td>'. $rows[$i]['id'] . '</td>';
          echo '<td>'. $rows[$i]['nome'] . '</td>';
          echo '<td>'. $rows[$i]['email'] . '</td>';
          echo '<td>'. $rows[$i]['linkedin'] . '</td>';
          echo '<td>'. $rows[$i]['curso'] . '</td>';
          echo '<td>'. $rows[$i]['campus'] . '</td>';
          echo '</tr>';
        }
      
      ?>
    </tbody>
  </table>
</body>
</html>