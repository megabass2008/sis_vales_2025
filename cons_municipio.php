<?php
require './config.php';

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $stmt = $conn->prepare("SELECT * FROM municipios order by municipio");
  $stmt->setFetchMode(PDO::FETCH_ASSOC);
  $stmt->execute();
  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;
} catch (PDOException $e) {
  echo "No se pudo conectar" . $e->getMessage();
}
