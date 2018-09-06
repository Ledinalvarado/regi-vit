<?php
/**
 * Created by PhpStorm.
 * User: ledin
 * Date: 9/5/2018
 * Time: 9:13 PM
 */
?>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Regivit</title>
    <link rel="stylesheet" href="../CSS/style.css">
</head>
<!--/*//////////////////////////////////*/-->
<body>




<div class="main">
    <div class="container-fluid">
        <div class="contenido">
            <br>
            <br>
            <div class="card animated fadeIn">
                <div id="capture">
                    <div class="card-header">
                        <strong>REG-RH.102 Solicitud de Empleo</strong>

                    </div>

                    <div class="card-body">
<!--                       Portada de REG-RH.102-->
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-2 align-content-center align-items-center">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/2/24/UNICAH_logo.png" width="150" height="150" alt="">
                            </div>
                            <div class="col-md-6 text-center font-weight-bold">
                                <h5>UNIVERSIDAD CATÓLICA DE HONDURAS</h5>
                                <h5>"NUESTRA SEÑORA REINA DE LA PAZ"</h5>
                                <h5>SOLICITUD DE EMPLEO</h5>
                                <h5>PERSONAL ADMINISTRATIVO, DOCENTE Y DE SERVICIO</h5>
                            </div>

                            <div class="col-md-2 align-content-center align-items-center">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/2/24/UNICAH_logo.png" width="150" height="150" alt="">
                            </div>

                        </div>
                        <br>
                        <form method="post" action="#" id="formulario">
                            <input type="hidden" id="token" value="fcutC3B2Pd5VJfrFKz7GVHs4XuvsYbRKGmCczXyx">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="">Puesto al que aspira</label>
                                    <small> *</small>
                                    <input type="text" name="aspire_position" class="form-control" placeholder="Ingrese el puesto al que aspira">
                                </div>
                            </div>
                            <br>
                            <p style="font-size: 10px" class="font-italic">OBSERVACIÓN: DESDE EL MOMENTO EN QUE APLICA UNA
                                OPORTUNIDAD LABORAL EN LA UNIVERSIDAD CATÓLICA, TODOS LOS
                                DOCUMENTOS FÍSICOS QUE USTED PRESENTE PERTENECEN A LA MISMA. SI EXISTIR COMPROMISO ENTRE
                                PARTES</p>

                            <p style="font-size: 10px" class="font-italic">Nota: Los campos donde aparece un * son obligatorios</p>
                            <br>
                            <!-- DATOS GENERALES-->
                            <div class="card-header">
                                <strong>I. DATOS PERSONALES</strong>
                            </div>
                            <br>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Primer Nombre</label>
                                    <small> *</small>
                                    <input type="text" name="first_name" class="form-control" value="Adan" readonly="">
                                </div>
                                <div class="form-group col">
                                    <label for="">Segundo Nombre</label>
                                    <small> *</small>
                                    <input type="text" name="second_name" class="form-control" value="Armando" readonly="">
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Primer Apellido</label>
                                    <small> *</small>
                                    <input type="text" name="first_surname" class="form-control" value="Trochez" readonly="">
                                </div>
                                <div class="form-group col">
                                    <label for="">Segundo Apellido</label>
                                    <small> *</small>
                                    <input type="text" name="second_surname" class="form-control" value="Lopez" readonly="">
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Apellido de casada</label>
                                    <input type="text" name="married_surname" class="form-control" placeholder="Ingrese su apellido de casada" onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <label for="">Direccion de domicilio</label>
                                    <small> *</small>
                                    <input type="text" name="address" class="form-control" placeholder="Ingrese la direccion del domicilio">
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Telefono</label>
                                    <small> *</small>
                                    <input type="text" name="home_number" class="form-control" placeholder="Ingrese su apellido de casada" onkeypress="return valida(event)">
                                </div>
                                <div class="form-group col">
                                    <label for="">Celular</label>
                                    <small> *</small>
                                    <input type="text" name="cellphone_number" class="form-control" placeholder="celular" onkeypress="return valida(event)">
                                </div>
                                <div class="form-group col">
                                    <label for="">E-mail</label>
                                    <small> *</small>
                                    <input type="email" name="email" class="form-control" value="ledinalvarado18@gmail.com" readonly="">
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Nacionalidad</label>
                                    <small> *</small>
                                    <select class="form-control formulario" name="nationality">
                                        <option value="">[Seleccione]</option>
                                        <option value="argentina">Argentina</option>
                                        <option value="20">Afganistán</option>
                                        <option value="30">Albania</option>
                                        <option value="40">Alemania</option>
                                        <option value="50">Andorra</option>
                                        <option value="60">Angola</option>
                                        <option value="70">Anguilla</option>
                                        <option value="80">Antártida Argentina</option>
                                        <option value="90">Antigua y Barbuda</option>
                                        <option value="100">Antillas Holandesas</option>
                                        <option value="110">Arabia Saudita</option>
                                        <option value="120">Argelia</option>
                                        <option value="130">Armenia</option>
                                        <option value="140">Aruba</option>
                                        <option value="150">Australia</option>
                                        <option value="160">Austria</option>
                                        <option value="170">Azerbaiján</option>
                                        <option value="180">Bahamas</option>
                                        <option value="190">Bahrain</option>
                                        <option value="200">Bangladesh</option>
                                        <option value="210">Barbados</option>
                                        <option value="220">Bélgica</option>
                                        <option value="230">Belice</option>
                                        <option value="240">Benin</option>
                                        <option value="250">Bhutan</option>
                                        <option value="260">Bielorusia</option>
                                        <option value="bolivia">Bolivia</option>
                                        <option value="280">Bosnia Herzegovina</option>
                                        <option value="290">Botswana</option>
                                        <option value="brasil">Brasil</option>
                                        <option value="310">Brunei</option>
                                        <option value="320">Bulgaria</option>
                                        <option value="330">Burkina Faso</option>
                                        <option value="340">Burundi</option>
                                        <option value="350">Cabo Verde</option>
                                        <option value="360">Camboya</option>
                                        <option value="370">Camerún</option>
                                        <option value="380">Canadá</option>
                                        <option value="390">Chad</option>
                                        <option value="chile">Chile</option>
                                        <option value="410">China</option>
                                        <option value="420">Chipre</option>
                                        <option value="430">Colombia</option>
                                        <option value="440">Comoros</option>
                                        <option value="450">Congo</option>
                                        <option value="460">Corea del Norte</option>
                                        <option value="470">Corea del Sur</option>
                                        <option value="480">Costa de Marfil</option>
                                        <option value="490">Costa Rica</option>
                                        <option value="500">Croacia</option>
                                        <option value="510">Cuba</option>
                                        <option value="520">Darussalam</option>
                                        <option value="530">Dinamarca</option>
                                        <option value="540">Djibouti</option>
                                        <option value="550">Dominica</option>
                                        <option value="560">Ecuador</option>
                                        <option value="570">Egipto</option>
                                        <option value="580">El Salvador</option>
                                        <option value="590">Em. Arabes Un.</option>
                                        <option value="600">Eritrea</option>
                                        <option value="610">Eslovaquia</option>
                                        <option value="620">Eslovenia</option>
                                        <option value="espana">España</option>
                                        <option value="640">Estados Unidos</option>
                                        <option value="650">Estonia</option>
                                        <option value="660">Etiopía</option>
                                        <option value="670">Fiji</option>
                                        <option value="680">Filipinas</option>
                                        <option value="690">Finlandia</option>
                                        <option value="700">Francia</option>
                                        <option value="710">Gabón</option>
                                        <option value="720">Gambia</option>
                                        <option value="730">Georgia</option>
                                        <option value="740">Ghana</option>
                                        <option value="750">Gibraltar</option>
                                        <option value="760">Grecia</option>
                                        <option value="770">Grenada</option>
                                        <option value="780">Groenlandia</option>
                                        <option value="790">Guadalupe</option>
                                        <option value="800">Guam</option>
                                        <option value="810">Guatemala</option>
                                        <option value="820">Guayana Francesa</option>
                                        <option value="830">Guinea</option>
                                        <option value="840">Guinea Ecuatorial</option>
                                        <option value="850">Guinea-Bissau</option>
                                        <option value="860">Guyana</option>
                                        <option value="870">Haití</option>
                                        <option value="880">Holanda</option>
                                        <option value="890">Honduras</option>
                                        <option value="900">Hong Kong</option>
                                        <option value="910">Hungría</option>
                                        <option value="920">India</option>
                                        <option value="930">Indonesia</option>
                                        <option value="940">Irak</option>
                                        <option value="950">Irán</option>
                                        <option value="960">Irlanda</option>
                                        <option value="970">Islandia</option>
                                        <option value="980">Islas Cayman</option>
                                        <option value="990">Islas Cook</option>
                                        <option value="1000">Islas Faroe</option>
                                        <option value="1010">Islas Marianas del Norte</option>
                                        <option value="1020">Islas Marshall</option>
                                        <option value="1030">Islas Solomon</option>
                                        <option value="1040">Islas Turcas y Caicos</option>
                                        <option value="1050">Islas Vírgenes</option>
                                        <option value="1060">Islas Wallis y Futuna</option>
                                        <option value="1070">Israel</option>
                                        <option value="1080">Italia</option>
                                        <option value="1090">Jamaica</option>
                                        <option value="1100">Japón</option>
                                        <option value="1110">Jordania</option>
                                        <option value="1120">Kazajstán</option>
                                        <option value="1130">Kenya</option>
                                        <option value="1140">Kirguistán</option>
                                        <option value="1150">Kiribati</option>
                                        <option value="1160">Kuwait</option>
                                        <option value="1170">Laos</option>
                                        <option value="1180">Lesotho</option>
                                        <option value="1190">Letonia</option>
                                        <option value="1200">Líbano</option>
                                        <option value="1210">Liberia</option>
                                        <option value="1220">Libia</option>
                                        <option value="1230">Liechtenstein</option>
                                        <option value="1240">Lituania</option>
                                        <option value="1250">Luxemburgo</option>
                                        <option value="1260">Macao</option>
                                        <option value="1270">Macedonia</option>
                                        <option value="1280">Madagascar</option>
                                        <option value="1290">Malasia</option>
                                        <option value="1300">Malawi</option>
                                        <option value="1310">Mali</option>
                                        <option value="1320">Malta</option>
                                        <option value="1330">Marruecos</option>
                                        <option value="1340">Martinica</option>
                                        <option value="1350">Mauricio</option>
                                        <option value="1360">Mauritania</option>
                                        <option value="1370">Mayotte</option>
                                        <option value="1380">México</option>
                                        <option value="1390">Micronesia</option>
                                        <option value="1400">Moldova</option>
                                        <option value="1410">Mónaco</option>
                                        <option value="1420">Mongolia</option>
                                        <option value="1430">Montserrat</option>
                                        <option value="1440">Mozambique</option>
                                        <option value="1450">Myanmar</option>
                                        <option value="1460">Namibia</option>
                                        <option value="1470">Nauru</option>
                                        <option value="1480">Nepal</option>
                                        <option value="1490">Nicaragua</option>
                                        <option value="1500">Níger</option>
                                        <option value="1510">Nigeria</option>
                                        <option value="1520">Noruega</option>
                                        <option value="1530">Nueva Caledonia</option>
                                        <option value="1540">Nueva Zelandia</option>
                                        <option value="1550">Omán</option>
                                        <option value="1570">Pakistán</option>
                                        <option value="1580">Panamá</option>
                                        <option value="1590">Papua Nueva Guinea</option>
                                        <option value="paraguay">Paraguay</option>
                                        <option value="1610">Perú</option>
                                        <option value="1620">Pitcairn</option>
                                        <option value="1630">Polinesia Francesa</option>
                                        <option value="1640">Polonia</option>
                                        <option value="1650">Portugal</option>
                                        <option value="1660">Puerto Rico</option>
                                        <option value="1670">Qatar</option>
                                        <option value="1680">RD Congo</option>
                                        <option value="1690">Reino Unido</option>
                                        <option value="1700">República Centroafricana</option>
                                        <option value="1710">República Checa</option>
                                        <option value="1720">República Dominicana</option>
                                        <option value="1730">Reunión</option>
                                        <option value="1740">Rumania</option>
                                        <option value="1750">Rusia</option>
                                        <option value="1760">Rwanda</option>
                                        <option value="1770">Sahara Occidental</option>
                                        <option value="1780">Saint Pierre y Miquelon</option>
                                        <option value="1790">Samoa</option>
                                        <option value="1800">Samoa Americana</option>
                                        <option value="1810">San Cristóbal y Nevis</option>
                                        <option value="1820">San Marino</option>
                                        <option value="1830">Santa Elena</option>
                                        <option value="1840">Santa Lucía</option>
                                        <option value="1850">Sao Tomé y Príncipe</option>
                                        <option value="1860">Senegal</option>
                                        <option value="1870">Serbia y Montenegro</option>
                                        <option value="1880">Seychelles</option>
                                        <option value="1890">Sierra Leona</option>
                                        <option value="1900">Singapur</option>
                                        <option value="1910">Siria</option>
                                        <option value="1920">Somalia</option>
                                        <option value="1930">Sri Lanka</option>
                                        <option value="1940">Sudáfrica</option>
                                        <option value="1950">Sudán</option>
                                        <option value="1960">Suecia</option>
                                        <option value="1970">Suiza</option>
                                        <option value="1980">Suriname</option>
                                        <option value="1990">Swazilandia</option>
                                        <option value="2000">Taiwán</option>
                                        <option value="uruguay">Uruguay</option>

                                    </select>
                                </div>
                                <div class="form-group col">
                                    <label for="">Estado Civil</label>
                                    <small> *</small>
                                    <select class="form-control formulario" name="civil_status">
                                        <option value="">[Seleccione]</option>
                                        <option value="">Soltero(a)</option>
                                        <option value="">Casado(a)</option>
                                        <option value="">Viudo(a)</option>
                                        <option value="">Divorciado(a)</option>
                                        <option value="">Separado(a)</option>
                                        <option value="">Conviviendo(a)</option>
                                    </select>
                                </div>
                                <div class="form-group col">
                                    <label for="">Edad</label>
                                    <small> *</small>
                                    <input type="number" name="age" class="form-control" placeholder="Ingrese su edad" onkeypress="return valida(event)" min="1" max="100">
                                </div>
                                <div class="form-group col">
                                    <label for="">Número de Identidad</label>
                                    <small> *</small>
                                    <input type="text" name="identity" class="form-control" value="0103199800062" readonly="">
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Fecha de nacimiento</label>
                                    <small> *</small>
                                    <input type="date" name="birthdate" class="form-control" placeholder="Fecha Nacimiento...">
                                </div>
                                <div class="form-group col">
                                    <label for="">N° IHSS</label>
                                    <input type="text" name="ihss" class="form-control" placeholder="Ingrese su número de IHSS">
                                </div>
                                <div class="form-group col">
                                    <label for="">N° RAP</label>
                                    <input type="text" name="rap" class="form-control" placeholder="Ingrese su número de RAP">
                                </div>
                                <div class=" form-group col">
                                    <label for="">Tipo de sangre</label>
                                    <small> *</small>
                                    <select class="form-control formulario" name="blood">
                                        <option value="">[Seleccione]</option>
                                        <option value="">O negativo</option>
                                        <option value="">O positivo</option>
                                        <option value="">A negativo</option>
                                        <option value="">A positivo</option>
                                        <option value="">B negativo</option>
                                        <option value="">B positivo</option>
                                        <option value="">AB negativo</option>
                                        <option value="">AB positivo</option>

                                    </select>
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Parroquia a la que pertenece</label>
                                    <small> *</small>
                                    <select class="form-control formulario" name="parish">
                                        <option value="">[Seleccione]</option>
                                        <option value="1">Suyapa</option>
                                    </select>
                                </div>
                                <div class="form-group col">
                                    <label for="">Nombre del párroco</label>
                                    <small> *</small>
                                    <select class="form-control formulario" name="priest">
                                        <option value="">[Seleccione]</option>
                                        <option value="1">Orlando Betuel Galeas Vargas</option>
                                        <option value="2">Kebel Ivan Portillo Arzu</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">¿Activo en algun movimiento católico?</label>
                                    <small> *</small>
                                    <textarea name="catholic_movement" id="" cols="30" rows="5" class="form-control" placeholder="Ingrese los detalles" onkeypress="return letras(event)"></textarea>
                                </div>
                            </div>

                            <!-- Bloque -->
                            <div class="row">
                                <div class="form-group col">
                                    <label for="">De ser contratado, esta dispuesto a participar en las actividades de
                                        la pastoral
                                        universitaria de la institución
                                        <small> *</small>
                                    </label>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" name="pastoral_activity" value="1" class="form-check-input" id="si_pastoral">
                                        <label for="si_pastoral" class="form-check-label">Si</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" name="pastoral_activity" value="2" class="form-check-input" id="no_pastoral">
                                        <label for="no_pastoral" class="form-check-label">No</label>
                                    </div>

                                </div>
                                <div class="form-group col">
                                    <label for="">¿Tiene familiares que laboren en la UNIVERSIDAD CATOLICA?</label>
                                    <small> *</small>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" name="family_university" value="1" class="form-check-input" id="si_familiar">
                                        <label for="si_familiar" class="form-check-label">Si</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input type="radio" name="family_university" value="2" class="form-check-input" id="no_familiar">
                                        <label for="no_familiar" class="form-check-label">No</label>
                                    </div>
                                </div>
                            </div>
                            <!-- REFERENCIAS-->
                            <div class="card-header">
                                <strong>II. REFERENCIAS</strong>
                                <small> *</small>
                            </div>
                            <br>
                            <h6>De tres referencias con nombres y direciones completas de personas que lo conozcan (No
                                deben ser
                                parientes).</h6>
                            <br><table class="table table-condensed table-bordered">
                                <thead class="card-header text-center">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Direccion</th>
                                    <th>Relación con la referencias</th>
                                    <th>Telefono</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="text" name="reference_name[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_address[]" class="form-control"></td>
                                    <td><input type="text" name="reference_relationship[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_number[]" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="reference_name[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_address[]" class="form-control"></td>
                                    <td><input type="text" name="reference_relationship[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_number[]" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="reference_name[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_address[]" class="form-control"></td>
                                    <td><input type="text" name="reference_relationship[]" class="form-control" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="reference_number[]" class="form-control"></td>
                                </tr>


                                </tbody>


                            </table>
                            <!-- COMPETENCIAS-->
                            <div class="card-header">
                                <strong>III. COMPETENCIAS</strong>
                                <small> *</small>
                            </div>

                            <!-- INCISO A -->
                            <br><h6>A. Liste los seis atributos personales más importantes que usted posee y que son
                                útiles para el
                                cargo que aplica: </h6>
                            <br>
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Primer Atributo..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Segundo Atributo..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Tercer Atributo..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Cuarto Atributo..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Quinto Atributo..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="competence[]" class="form-control" placeholder="Sexto Atributo..." onkeypress="return letras(event)">
                                </div>
                            </div>

                            <!-- INCISO C -->
                            <br><h6>B. Complete el siguiente cuadro relacionado con su educación y formación
                                academica: </h6>
                            <br>
                            <table class="table table-bordered">
                                <thead class="card-header text-center">
                                <tr>
                                    <th>Educación
                                        <small> *</small>
                                    </th>
                                    <th>Años
                                        <small> *</small>
                                    </th>
                                    <th>Nombre de la institución
                                        <small> *</small>
                                    </th>
                                    <th>Titulo obtenido
                                        <small> *</small>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Primaria</td>
                                    <td><input type="text" class="form-control date" name="education_years[]" onkeypress="return valida(event)"></td>
                                    <td><input type="text" class="form-control" name="education_school_name[]"></td>
                                    <td><input type="text" class="form-control" name="education_degree[]" onkeypress="return letras(event)"></td>
                                </tr>
                                <tr>
                                    <td>Secundaria</td>
                                    <td><input type="text" class="form-control date" name="education_years[]" onkeypress="return valida(event)"></td>
                                    <td><input type="text" class="form-control" name="education_school_name[]"></td>
                                    <td><input type="text" class="form-control" name="education_degree[]" onkeypress="return letras(event)"></td>
                                </tr>
                                <tr>
                                    <td>Universitaria</td>
                                    <td><input type="text" class="form-control date" name="education_years[]" onkeypress="return valida(event)"></td>
                                    <td><input type="text" class="form-control" name="education_school_name[]"></td>
                                    <td><input type="text" class="form-control" name="education_degree[]" onkeypress="return letras(event)"></td>
                                </tr>
                                </tbody>
                            </table>

                            <!-- INCISO C -->
                            <br>
                            <h6>D. Liste los seis conocimientos más importantes que usted posee de acuerdo a su
                                educación y al
                                puesto que aplica:
                                <small> *</small>
                            </h6>
                            <br>
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Primer Conocimiento..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Segundo Conocimiento..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Tercer Conocimiento..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Cuarto Conocimiento..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Quinto Conocimiento..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="knowledge[]" class="form-control" placeholder="Sexto Conocimiento..." onkeypress="return letras(event)">
                                </div>
                            </div>

                            <!-- INCISO D -->
                            <br>
                            <h6>D. Enuncie las habilidades que posee y garantizan que cumplirá las actividades
                                requeridas por el
                                puesto que aplica:
                                <small> *</small>
                            </h6>
                            <br>
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Primer Habilidad..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Segunda Habilidad..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Tercera Habilidad..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Cuarta Habilidad..." onkeypress="return letras(event)">
                                </div>
                            </div>
                            <!-- BLOQUE -->
                            <div class="row">
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Quinta Habilidad..." onkeypress="return letras(event)">
                                </div>
                                <div class="form-group col">
                                    <input type="text" name="skill[]" class="form-control" placeholder="Sexta Habilidad..." onkeypress="return letras(event)">
                                </div>
                            </div>

                            <!-- INCISO E -->
                            <br><h6>E. Complete el siguiente cuadro relacionado con su experiencia de trabajo: </h6>
                            <br>
                            <table class="table table-bordered">
                                <thead class="card-header text-center">
                                <tr>
                                    <th>Empresa</th>
                                    <th>Puesto</th>
                                    <th>Años trabajados</th>
                                    <th>Tres actividades más revelantes desempeñadas</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="align-content-center align-items-md-center">
                                    <td rowspan="4"><input type="text" class="form-control" name="company_name"></td>
                                    <td rowspan="4"><input type="text" class="form-control" name="position"></td>
                                    <td rowspan="4"><input type="text" class="form-control" name="worked_years" onkeypress="return valida(event)">
                                    </td>
                                </tr><tr>
                                    <td><input type="text" class="form-control" name="activity[]" onkeypress="return letras(event)"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" name="activity[]" onkeypress="return letras(event)"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" name="activity[]" onkeypress="return letras(event)"></td>
                                </tr>
                                <tr>

                                </tr></tbody>
                            </table>

                            <!-- DATOS ECONÓMICOS-->
                            <div class="card-header">
                                <strong>IV. Datos Económicos</strong>
                            </div>
                            <!-- INCISO A -->
                            <br><h6>A. Complete el siguiente cuadro relacionado con las personas que dependen
                                económicamente de
                                usted: </h6>
                            <br>
                            <table class="table table-bordered">
                                <thead class="card-header text-center">
                                <tr>
                                    <th>Nombre completo</th>
                                    <th>Parentesco</th>
                                    <th>Edad</th>
                                    <th>Dirección</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="text" name="dependent_name[]" class="form-control" placeholder="" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="dependent_relationship[]" class="form-control" placeholder=""></td>
                                    <td><input type="number" name="dependent_age[]" class="form-control" placeholder="" onkeypress="return valida(event)"></td>
                                    <td><input type="text" name="dependent_address[]" class="form-control" placeholder=""></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="dependent_name[]" class="form-control" placeholder="" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="dependent_relationship[]" class="form-control" placeholder=""></td>
                                    <td><input type="number" name="dependent_age[]" class="form-control" placeholder="" onkeypress="return valida(event)"></td>
                                    <td><input type="text" name="dependent_address[]" class="form-control" placeholder=""></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="dependent_name[]" class="form-control" placeholder="" onkeypress="return letras(event)"></td>
                                    <td><input type="text" name="dependent_relationship[]" class="form-control" placeholder=""></td>
                                    <td><input type="number" name="dependent_age[]" class="form-control" placeholder="" onkeypress="return valida(event)"></td>
                                    <td><input type="text" name="dependent_address[]" class="form-control" placeholder=""></td>
                                </tr>
                                </tbody>
                            </table>

                            <!-- INCISO B -->
                            <br>
                            <h6>B. Sueldo mínimo que aceptaria:
                                <small> *</small>
                            </h6>
                            <input type="number" class="form-control col-sm-4" name="minimun_salary" placeholder="Ingrese el sueldo mínimo que aceptaria" onkeypress="return valida(event)">
                            <br>

                            <div class="row">
                                <div class="form-group col">
                                    <label for="">Lugar y fecha
                                        <small> *</small>
                                    </label>
                                    <input type="text" name="place_date" class="form-control" value="La Ceiba Atlantida, 05 de 09 del 2018">
                                </div>
                                <div class="form-group col">
                                    <label for="" data-toggle="modal" data-target="#modal_firma"><strong>Firma (De click
                                            aqui)</strong>
                                        <small> *</small>
                                    </label><br>
                                    <div class="form-control align-content-center" id="contenedor_firma" style="height: 100px">
                                        <img src="" alt="" id="img-firma" width="" height="">
                                    </div>
                                    <input type="hidden" name="signature_path" id="firma" value="">
                                    <input type="hidden" id="screen_shot" name="report" value="">
                                </div>
                            </div>
                            <br><h6>Aprobada el 05/09/2018</h6>
                            <div>
                                <div class="float-right">
                                    <button type="reset" class="btn btn-secondary">Cancelar</button>
                                    <button type="button" id="save" class="btn btn-success">Guardar</button>
                                </div>
                                <br><br>
                                <div class="alert alert-danger mensaje-error alert-dismissible" style="display: block;">
                                    <ul>
                                        <li>Debes de incluir la dirección donde vives</li>
                                        <li>Debes de incluir la nacionalidad</li>
                                        <li>Debes de incluir tu fecha de nacimiento</li>
                                        <li>The catholic movement must be a string.</li>
                                        <li>Debes elegir si deseas participar en pastoral</li>
                                        <li>Debes que decirnos si tienes familia en la universidad</li>
                                        <li>Debes de incluir tu posición actual</li>
                                        <li>Debes de indicar que tipo de sangre tienes</li>
                                        <li>Debes de indicar tu estado civil</li>
                                        <li>Debes de indicar tu edad</li>
                                        <li>Es necesario indicar la parroquia a la que asiste</li>
                                        <li>Debes de indicar el nombre del parroco</li>
                                        <li>The minimun salary field is required.</li>
                                        <li>The education_school_name.0 field is required.</li>
                                        <li>The education_school_name.1 field is required.</li>
                                        <li>The education_school_name.2 field is required.</li>
                                        <li>The education_years.0 field is required.</li>
                                        <li>The education_years.1 field is required.</li>
                                        <li>The education_years.2 field is required.</li>
                                        <li>The education_degree.0 field is required.</li>
                                        <li>The education_degree.1 field is required.</li>
                                        <li>The education_degree.2 field is required.</li>
                                    </ul>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>

            </div>

            <div class="modal fade" id="modal_firma">

            </div>




        </div>
    </div>
</div>
<footer class="app-footer">
    <div>
        <a href="#">Regivit</a>
        <span>Derechos Reservados para Prueba, Documentación e Implementación de Sistemas © 2018 II .</span>
    </div>
</footer>
</body>
</html>
