<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$apellidos1 = $_POST["apellidos1"];
$nombres1 = $_POST["nombres1"];
$ci1 = $_POST["ci1"];
$direccion1 = $_POST["direccion1"];
$profesion1 = $_POST["profesion1"];
$fec_nac1 = $_POST["fec_nac1"];
$fech_ingreso1 = $_POST["fech_ingreso1"];
$fech_salida1 = $_POST["fech_salida1"];

$reg = array();
$reg["id_compania_limpieza"] = 1;
$reg["apellidos"] = $apellidos1;
$reg["nombres"] = $nombres1;
$reg["ci"] = $ci1;
$reg["direccion"] = $direccion1;
$reg["profesion"] = $profesion1;
$reg["fec_nac"] = $fec_nac1;
$reg["fech_ingreso"] = $fech_ingreso1;
$reg["fech_salida"] = $fech_salida1;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("empleados", $reg, "INSERT");
?>