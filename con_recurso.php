<?php
header('Content-type: application/json');
include './config.php';

$recurso = $_GET['recurso'];
$categoria = $_GET['categoria'];


try {
    $dsn = "mysql:host=$host;dbname=$BD";
    $conn = new PDO($dsn, $usuario, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT id_recurso, recurso, id_categoria, categoria FROM recursos INNER JOIN categorias on recursos.categoria_id = categorias.id_categoria where recurso like ? or categoria like ? ORDER by recurso";
    $stmt = $conn->prepare($sql);
    $recurso = '%' . $recurso . '%';
    $categoria = '%' . $categoria . '%';

    $stmt->execute([$recurso, $categoria]);
    $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo $datos = json_encode($datos);
    $conn = null;
} catch (PDOException $e) {
    echo json_encode(array('error' => $e->getMessage()));
}
