<?php
include('./constant/layout/head.php');
include('./constant/layout/header.php');
include('./constant/layout/sidebar.php');
include('php_action/listarPacientes.php');
?>

<div class="page-wrapper">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Gestionar Pacientes</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                <li class="breadcrumb-item active">Gestionar Pacientes</li>
            </ol>
        </div>
    </div>

    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <a href="add-paciente.php"><button class="btn btn-primary">Agregar Paciente</button></a>
               
                <div class="table-responsive m-t-40">
                    <table id="myTable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Rut</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Fecha de Nacimiento</th>
                                <th>Género</th>
                                <th>Dirección</th>
                                <th>Ciudad</th>
                                <th>Estado</th>
                                <th>Código Postal</th>
                                <th>Teléfono</th>
                                <th>Correo Electrónico</th>
                                <th>Historial Médico</th>
                                <th>Fecha de Registro</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                                $no = 0;
                                foreach ($output['data'] as $row) {
                                    $no += 1;
                                ?>
                                    <tr>
                                    <td class="text-center"><?= $no; ?></td>
                                    <td><?php echo $row[1] ?></td>
                                    <td><?php echo $row[2] ?></td>
                                    <td><?php echo $row[3] ?></td>
                                    <td><?php echo $row[4] ?></td>
                                    <td><?php echo $row[5] ?></td>
                                    <td><?php echo $row[6] ?></td>
                                    <td><?php echo $row[7] ?></td>
                                    <td><?php echo $row[8] ?></td>
                                    <td><?php echo $row[9] ?></td>
                                    <td><?php echo $row[10] ?></td>
                                    <td><?php echo $row[11] ?></td>
                                    <td><?php echo $row[12] ?></td>
                                    <td><?php echo $row[13] ?></td>
                                    <td>
                                        <a href="editar-paciente.php?id=<?php echo $row[0] ?>"><button type="button" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i></button></a>
                                        <!-- Agrega más acciones según sea necesario -->
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('./constant/layout/footer.php'); ?>
