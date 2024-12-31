<?php
require './config.php';

try {
  $dsn = "mysql:host=$host;dbname=$BD";
  $conn = new PDO($dsn, $usuario, $password);
  $stmt = $conn->prepare("SELECT * FROM prefijos order by prefijo");
  $stmt->setFetchMode(PDO::FETCH_ASSOC);
  $stmt->execute();
  $datos = $stmt->fetchAll();
  $dato = json_encode($datos);
  echo $dato;
} catch (PDOException $e) {
  echo "No se pudo conectar" . $e->getMessage();
}
