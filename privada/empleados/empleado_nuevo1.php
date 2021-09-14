<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_compania_limpieza = $_POST["id_compania_limpieza"];
$__ci =$_POST["ci"];
$__nombres = $_POST["nombres"];
$__apellidos = $_POST["apellidos"];
$__fec_nac = $_POST["fec_nac"];
$__direccion = $_POST["direccion"];
$__profesion = $_POST["profesion"];

//$db->debug=true;

$smarty = new Smarty;

     $reg = array();
     $reg["id_compania_limpieza"] = $__id_compania_limpieza;
     $reg["ci"] = $__ci;
     $reg["nombres"] = $__nombres;
     $reg["apellidos"] = $__apellidos;
     $reg["fec_nac"] = $__fec_nac;
     $reg["direccion"] = $__direccion;
     $reg["profesion"] = $__profesion;
     $reg["fec_insercion"] = date("Y-m-d H:i:s");
     $reg["estado"] = 1;
     $reg["usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("empleados", $reg, "INSERT");

if ($rs1) {
	header("Location: empleados.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("empleado_nuevo1.tpl");
}
?>