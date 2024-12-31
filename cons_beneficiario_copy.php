<?php
require './config.php';

$valor_fitro = $_GET['valor_fitro'];


try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $sql = "SELECT * FROM beneficiarios INNER JOIN prefijos ON beneficiarios.prefijo_id=prefijos.id_prefijo INNER JOIN municipios on beneficiarios.municipio_id=municipios.id_municipio WHERE activo = 1 and (apellido_nombre like ? or prefijo like ? or dni like ? or municipio like ?) ORDER by apellido_nombre";

  $stmt = $conn->prepare($sql);

  $stmt->setFetchMode(PDO::FETCH_ASSOC);

  $valor_fitro = '%' . $valor_fitro . '%';
  $stmt->execute([$valor_fitro, $valor_fitro, $valor_fitro, $valor_fitro]);

  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;
} catch (PDOException $e) {
  echo "No se pudo conectar" . $e->getMessage();
}
