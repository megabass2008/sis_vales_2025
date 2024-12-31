<?php
require './config.php';

$valor_r = $_GET['valor_r'];
$valor_r_2 = $_GET['valor_r_2'];
$valor_r_3 = $_GET['valor_r_2'];
$tabla = 'beneficiarios';

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $sql = "SELECT * FROM $tabla WHERE prefijo_id = ? and (apellido_nombre like ? or dni like ?) and activo = 1 ORDER by apellido_nombre";
  //$sql = "SELECT * FROM beneficiario WHERE prefijo_id = ?";
  $stmt = $conn->prepare($sql);

  $stmt->setFetchMode(PDO::FETCH_ASSOC);

  $valor_r_2 = '%' . $valor_r_2 . '%';
  $valor_r_3 = '%' . $valor_r_3 . '%';
  $stmt->execute([$valor_r, $valor_r_2, $valor_r_3]);
  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;
} catch (PDOException $e) {
  echo "No se pudo conectar" . $e->getMessage();
}
