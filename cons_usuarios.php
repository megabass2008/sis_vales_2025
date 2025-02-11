<?php
include "./config.php";

try {
    $dsn = "mysql:host=$host;dbname=$BD";
    $conn = new PDO($dsn, $usuario, $password);

    $sql = "SELECT * FROM `usuarios` INNER JOIN roles ON usuarios.rol_id = roles.id_rol;";

    $stmt = $conn->prepare($sql);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    $stmt->execute();
    $datos = $stmt->fetchAll();
    $dato = json_encode($datos);
    echo $dato;
} catch (\Throwable $th) {
    //throw $th;
}
