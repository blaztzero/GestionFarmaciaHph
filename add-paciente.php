<?php
include('./constant/layout/head.php');
include('./constant/layout/header.php');
include('./constant/layout/sidebar.php');
?>

<div class="page-wrapper">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Agregar Paciente</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                <li class="breadcrumb-item active">Agregar Paciente</li>
            </ol>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="card">
                    <div class="card-title"></div>
                    <div id="add-patient-messages"></div>
                    <div class="card-body">
                        <div class="input-states">
                            <form class="row" method="POST" id="submitPatientForm" action="php_action/crearPaciente.php">
                            <div class="form-group col-md-6">
                                    <label class="control-label">Rut</label>
                                    <input type="text" class="form-control" id="rutPaciente" placeholder="Rut Paciente" name="rutPaciente" autocomplete="on" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre" autocomplete="off" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Apellido</label>
                                    <input type="text" class="form-control" id="apellido" placeholder="Apellido" name="apellido" autocomplete="off" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Fecha de Nacimiento</label>
                                    <input type="date" class="form-control" id="fechaNacimiento" name="fechaNacimiento" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Género</label>
                                    <select class="form-control" id="genero" name="genero" required>
                                        <option value="">Seleccionar</option>
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                    </select>
                                </div>
                                <!-- Añadir más campos según sea necesario -->
                                <div class="form-group col-md-6">
                                    <label class="control-label">Direccion</label>
                                    <input type="text" class="form-control" id="direccion" name="direccion" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Ciudad</label>
                                    <input type="text" class="form-control" id="ciudad" name="ciudad" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">telefono</label>
                                    <input type="number" class="form-control" id="telefono" name="telefono" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">correo</label>
                                    <input type="email" class="form-control" id="correo" name="correo" required />
                                </div>


                                <div class="col-md-1 mx-auto">
                                    <button type="submit" name="createPatient" class="btn btn-primary btn-flat m-b-30 m-t-30">Agregar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('./constant/layout/footer.php'); ?>
