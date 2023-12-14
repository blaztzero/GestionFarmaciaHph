<?php

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if ($_POST) {
    $rutPaciente    = $_POST['rutPaciente'];
    $nombre         = $_POST['nombre'];
    $apellido       = $_POST['apellido'];
    $fechaNacimiento = $_POST['fechaNacimiento'];
    $genero         = $_POST['genero'];
    $direccion      = $_POST['direccion'];
    $ciudad         = $_POST['ciudad'];
    $estado         = $_POST['estado'];
    $codigoPostal   = $_POST['codigoPostal'];
    $telefono       = $_POST['telefono'];
    $correoElectronico = $_POST['correo'];
    $historialMedico = $_POST['historialMedico'];
    $fechaRegistro  = date('Y-m-d H:i:s');

    $sql = "INSERT INTO pacientes (rutPaciente, nombre, apellido, fecha_nacimiento, genero, direccion, ciudad, estado, codigo_postal, telefono, correo_electronico, historial_medico, fecha_registro) 
            VALUES ('$rutPaciente','$nombre', '$apellido', '$fechaNacimiento', '$genero', '$direccion', '$ciudad', '$estado', '$codigoPostal', '$telefono', '$correoElectronico', '$historialMedico', '$fechaRegistro')";

    if ($connect->query($sql) === TRUE) {
        $valid['success'] = true;
        $valid['messages'] = "Paciente agregado exitosamente";
        header('location:../pacientes.php');
    } else {
        $valid['success'] = false;
        $valid['messages'] = "Error al agregar paciente: " . $connect->error;
    }

    $connect->close();

    echo json_encode($valid);
}
