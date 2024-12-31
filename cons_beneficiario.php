<?php
require './config.php';

$valor = $_GET['valor'];
$valor_2 = $_GET['valor_2'];
$valor_3 = $_GET['valor_2'];
$tabla = 'beneficiarios';

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $sql = "SELECT * FROM $tabla WHERE prefijo_id = ? and (apellido_nombre like ? or dni like ?) and activo = 1 ORDER by apellido_nombre";

  $stmt = $conn->prepare($sql);

  $stmt->setFetchMode(PDO::FETCH_ASSOC);

  $valor_2 = '%' . $valor_2 . '%';
  $valor_3 = '%' . $valor_3 . '%';
  $stmt->execute([$valor, $valor_2, $valor_3]);

  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;
} catch (PDOException $e) {
  echo "No se pudo conectar" . $e->getMessage();
}
