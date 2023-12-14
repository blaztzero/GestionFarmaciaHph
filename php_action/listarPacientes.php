<?php

require_once 'core.php';

$sql = "SELECT * FROM pacientes";

$result = $connect->query($sql);

$output = array('data' => array());

if ($result->num_rows > 0) {

    while ($row = $result->fetch_array()) {
        $idPaciente = $row[0];

        $button = '
        <div class="btn-group">
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Acción <span class="caret"></span>
          </button>
          <ul class="dropdown-menu">
            <li><a type="button" data-toggle="modal" id="editPacienteModalBtn" data-target="#editPacienteModal" onclick="editPaciente('.$idPaciente.')"> <i class="glyphicon glyphicon-edit"></i> Editar</a></li>
            <li><a type="button" data-toggle="modal" data-target="#removePacienteModal" id="removePacienteModalBtn" onclick="removePaciente('.$idPaciente.')"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a></li>       
          </ul>
        </div>';

        $output['data'][] = array(
            // id_paciente
            $idPaciente,
            // nombre
            $row[1],
            // apellido
            $row[2],
            // fecha_nacimiento
            $row[3],
            // genero
            $row[4],
            // direccion
            $row[5],
            // ciudad
            $row[6],
            // estado
            $row[7],
            // codigo_postal
            $row[8],
            // telefono
            $row[9],
            // correo_electronico
            $row[10],
            // historial_medico
            $row[11],
            // fecha_registro
            $row[12],

            $row[13],
            // button
            $button
        );
    }
}

$connect->close();

//echo json_encode($output);
