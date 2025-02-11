<?php

include './config.php';

$fecha = $_POST['fecha'];
$vencimiento = $_POST['vencimiento'];
$expediente = $_POST['expediente'];
$deposito_id = $_POST['deposito_id'];
$prefijo_id_b = $_POST['prefijo_id_b'];
$beneficiario_id_b = $_POST['beneficiario_id_b'];
$prefijo_id_r = $_POST['prefijo_id_r'];
$beneficiario_id_r = $_POST['beneficiario_id_r'];

$recurso_id = json_decode($_POST['recurso_id'], true);
$cantidad_n = json_decode($_POST['cantidad_n'], true);
$cantidad_l = strtolower(json_decode($_POST['cantidad_l'], true));

$dsn = "mysql:host=$host;dbname=$BD";
$conn = new PDO($dsn, $usuario, $password);
$sql = "INSERT INTO vale_encabezado (id_vale_encabezado,fecha,vencimiento,expediente,deposito_id,prefijo_id_b,beneficiario_id_b,prefijo_id_r,beneficiario_id_r) VALUES (DEFAULT,:fecha,:vencimiento,:expediente,:deposito,:prefijo_id_b,:beneficiario_id_b,:prefijo_id_r,:beneficiario_id_r)";

$stmt = $conn->prepare($sql);

$stmt->bindParam(':fecha', $fecha);
$stmt->bindParam(':vencimiento', $vencimiento);
$stmt->bindParam(':expediente', $expediente);
$stmt->bindParam(':deposito',  $deposito_id);
$stmt->bindParam(':prefijo_id_b', $prefijo_id_b);
$stmt->bindParam(':beneficiario_id_b', $beneficiario_id_b);
$stmt->bindParam(':prefijo_id_r', $prefijo_id_r);
$stmt->bindParam(':beneficiario_id_r', $beneficiario_id_r);

$stmt->execute();

$id_encabezado = $conn->lastInsertId();

$sql = "INSERT INTO vale_detalle (id_vale_detalle,vale_encabezado_id,recurso_id,cantidad_numero,cantidad_letra) VALUES 
(DEFAULT,:vale_encabezado_id,:recurso_id,:cantidad_numero,:cantidad_letra)";

$stmt = $conn->prepare($sql);

foreach ($recurso_id as $key => $value) {

    $stmt->bindValue(':vale_encabezado_id', $id_encabezado);
    $stmt->bindValue(':recurso_id', $value);
    $stmt->bindValue(':cantidad_numero', $cantidad_n[$key]);
    $stmt->bindValue(':cantidad_letra', $cantidad_l[$key]);

    $stmt->execute();
}

$conn = null;
