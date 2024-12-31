<?php
require './conn.php';

 // FETCH_ASSOC
 $stmt = $conn->prepare("SELECT * FROM prefijo");
 // Especificamos el fetch mode antes de llamar a fetch()
 $stmt->setFetchMode(PDO::FETCH_ASSOC);
 // Ejecutamos
 $stmt->execute();
 $datos = $stmt->fetchAll();
 echo $datos = json_encode($datos);

?>