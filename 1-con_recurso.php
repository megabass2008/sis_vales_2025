<?php
include './config.php';


$tabla = 'recurso';
$valor = $_GET['valor'];
$valor_2 = $_GET['valor_2'];
$valor_3 = $_GET['valor_2'];


try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $sql = "SELECT * FROM $tabla WHERE prefijo_id = ? and (apellido_nombre like ? or documento like ?) and activo = 'S' ORDER by apellido_nombre";

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
