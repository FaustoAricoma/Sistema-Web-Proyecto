<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__tipo = $_POST["tipo"];

$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_compania_limpieza"] = 1;
$reg["nombre"] = $__nombre;
$reg["tipo"] = $__tipo;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = 1;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rsl = $db->AutoExecute("maquinas", $reg, "INSERT");

if ($rsl) {
	header("Location: maquinas.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos nose insertaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("maquina_nuevo1.tpl");
}
?>