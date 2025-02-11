<?php
include "./config.php";

$apellido_nombre = strtolower($_POST["apellido_nombre"]);
$dni = $_POST["dni"];
$cliente = strtolower($_POST["cliente"]);
$contrasena = password_hash($_POST["contrasena"], PASSWORD_DEFAULT);
$rol_id = $_POST["rol_id"];
$activo = $_POST["activo"];

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $sql = "INSERT INTO usuarios (id_usuario, apellido_nombre, dni, usuario, contrasena, rol_id, activo) VALUES(DEFAULT,:apellido_nombre, :dni, :cliente, :contrasena, :rol_id, :activo)";
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':apellido_nombre', $apellido_nombre);
  $stmt->bindParam(':dni', $dni);
  $stmt->bindParam(':cliente', $cliente);
  $stmt->bindParam(':contrasena', $contrasena);
  $stmt->bindParam(':rol_id', $rol_id);
  $stmt->bindParam(':activo', $activo);
  $stmt->execute();
  $ultimo_id_insertado = $conn->lastInsertId();
  echo json_encode($ultimo_id_insertado);
  //$conn = null;
} catch (PDOException $e) {
  echo json_encode(["No se pudo conectar" => $e->getMessage()]);
}
