<?php
header('Content-Type: application/json'); // Asegura que PHP devuelva JSON
include "./config.php";

$usuario_log = $_POST['usuario'] ?? '';
$contrasena_log = $_POST['contrasena'] ?? '';

try {
  $dsn = "mysql:host=$host;dbname=$BD;charset=utf8";
  $conn = new PDO($dsn, $usuario, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $sql = "SELECT contrasena, apellido_nombre FROM usuarios WHERE usuario = :usuario_log";
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':usuario_log', $usuario_log);
  $stmt->execute();

  $datos = $stmt->fetch(PDO::FETCH_ASSOC);

  if ($datos) {
    $contrasena_bd = $datos['contrasena'];

    if (password_verify($contrasena_log, $contrasena_bd)) {

      session_start();

      $_SESSION['usuario'] = $usuario_log; // Guardamos usuario en sesión
      $_SESSION['nombre_completo'] = $datos['apellido_nombre']; // Nombre completo

      echo json_encode(['success' => true]);
      exit;
    } else {
      echo json_encode(['success' => false, 'message' => 'Contraseña incorrecta.']);
      exit;
    }
  } else {
    echo json_encode(['success' => false, 'message' => 'Usuario no encontrado.']);
    exit;
  }
} catch (Exception $e) {
  echo json_encode(['success' => false, 'message' => 'Error del servidor: ' . $e->getMessage()]);
  exit;
}
