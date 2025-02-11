<?php
include './config.php';

$usurio_log = $_POST['usuario'];
$dni_log = $_POST['dni_pass'];
//$pass_nuevo_1 = '12'; //$_POST['pass_1'];
//$pass_nuevo_2 = '12'; //$_POST['pass_2'];

//if ($pass_nuevo_1 === $pass_nuevo_2) {

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);

  $sql = "SELECT `id_usuario` FROM `usuarios` WHERE usuario = :usuario_p AND dni = :dni_p";

  //$sql = "INSERT INTO usuarios (id_usuario, apellido_nombre, dni, usuario, contrasena, rol_id, activo) VALUES(DEFAULT,:apellido_nombre, :dni, :cliente, :contrasena, :rol_id, :activo)";

  $stmt = $conn->prepare($sql);

  $stmt->bindParam(':usuario_p', $usuario_log);
  $stmt->bindParam(':dni_p', $dni_log);

  //$pass_nuevo = password_hash($pass_nuevo_1, PASSWORD_DEFAULT);
  //$stmt->bindParam(':contrasena', $pass_nuevo);

  $stmt->execute();
  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;


  //$conn = null;
} catch (PDOException $e) {
  echo json_encode(["No se pudo conectar" => $e->getMessage()]);
}
//} else {
//}
