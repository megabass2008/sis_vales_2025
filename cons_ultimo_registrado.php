<?php
include './config.php';

$id_utlimo_agregado = $_GET['id'];


try {
    $dsn = "mysql:host=$host;dbname=$BD";
    $conn = new PDO($dsn, $usuario, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * FROM beneficiarios where id_beneficiario = ?";
    $stmt = $conn->prepare($sql);

    $stmt->execute([$id_utlimo_agregado]);

    $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($datos);
    $conn = null;
} catch (PDOException $e) {
    echo json_encode(array('error' => $e->getMessage()));
}
