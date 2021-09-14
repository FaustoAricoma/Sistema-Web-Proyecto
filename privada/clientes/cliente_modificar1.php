<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_cliente = $_REQUEST["id_cliente"];

$__nombre = $_POST["nombre"];
$__direccion = $_POST["direccion"];
$__telefono = $_POST["telefono"];
$__nit = $_POST["nit"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["nombre"] = $__nombre;
$reg["direccion"] = $__direccion;
$reg["telefono"] = $__telefono;
$reg["nit"] = $__nit;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rsl = $db->AutoExecute("clientes", $reg, "UPDATE", "id_cliente='".$__id_cliente."'");

if ($rsl) {
	header("Location: clientes.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_cliente", $__id_cliente);
	$smarty->display("cliente_modificar1.tpl");
}
?>