<?php
require './config.php';

$apellido_nombre = $_POST['apellido_nombre'];
$dni = $_POST['dni'];
$domicilio = $_POST['domicilio'];
$telefono = $_POST['telefono'];
$prefijo_id = $_POST['prefijo_id'];
$municipio_id = $_POST['municipio_id'];
$activo = $_POST['activo'];

try {
    $dsn = "mysql:host=$host;dbname=$BD";
    $conn = new PDO($dsn, $usuario, $password);

    $sql = "INSERT INTO beneficiarios(id_beneficiario,dni,apellido_nombre,domicilio,telefono,prefijo_id,municipio_id,activo) VALUES (DEFAULT,:dni,:apellido_nombre,:domicilio,:telefono,:prefijo_id,:municipio_id,:activo)";

    $stmt = $conn->prepare($sql);

    $stmt->bindParam(':dni', $dni);
    $stmt->bindParam(':apellido_nombre', $apellido_nombre);
    $stmt->bindParam(':domicilio', $domicilio);
    $stmt->bindParam(':telefono', $telefono);
    $stmt->bindParam(':prefijo_id', $prefijo_id);
    $stmt->bindParam(':municipio_id', $municipio_id);
    $stmt->bindParam(':activo', $activo);

    $stmt->execute();
    $ultimo_id_insertado = $conn->lastInsertId();
    echo json_encode($ultimo_id_insertado);
    $conn = null;
} catch (PDOException $e) {
    echo json_encode(["No se pudo conectar" => $e->getMessage()]);
}
