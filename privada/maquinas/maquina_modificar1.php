<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_maquina = $_REQUEST["id_maquina"];

$__nombre = $_POST["nombre"];
$__tipo = $_POST["tipo"];

$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["nombre"] = $__nombre;
$reg["tipo"] = $__tipo;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rsl = $db->AutoExecute("maquinas", $reg, "UPDATE", "id_maquina='".$__id_maquina."'");

if ($rsl) {
	header("Location: maquinas.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_maquina", $__id_maquina);
	$smarty->display("maquina_modificar1.tpl");
}
?>