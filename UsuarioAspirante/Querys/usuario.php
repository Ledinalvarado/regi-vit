<?php
/**
 * Created by PhpStorm.
 * User: ledin
 * Date: 9/7/2018
 * Time: 3:07 PM
 */
require_once '../../conexion/conexion.php';

//$mysqli =new PDO("mysql:dbname=regi-vit;host=127.0.0.1","root","K17OACX"
//    ,[  PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION ]);
//
//
//if (mysqli_connect_errno()) {
//    printf("Falló la conexión : %s\n", $mysqli->connect_error);
//    exit();
//}

$codigo='ledin';
$query = $pdo->query("SELECT * FROM usuario".
        " WHERE primer_nom='{$codigo}'");



echo $query;

?>