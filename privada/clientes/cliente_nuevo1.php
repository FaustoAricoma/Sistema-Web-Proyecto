<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__direccion = $_POST["direccion"];
$__telefono = $_POST["telefono"];
$__nit = $_POST["nit"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_compania_limpieza"] = 1;
$reg["nombre"] = $__nombre;
$reg["direccion"] = $__direccion;
$reg["telefono"] = $__telefono;
$reg["nit"] = $__nit;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = 1;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rsl = $db->AutoExecute("clientes", $reg, "INSERT");

if ($rsl) {
	header("Location: clientes.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos nose insertaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("cliente_nuevo1.tpl");
}
?>