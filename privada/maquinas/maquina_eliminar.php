<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_maquina = $_REQUEST["id_maquina"];

$smarty = new Smarty;

//$db->debug=true;

/*LAS CONSULTAS SE DEVEN HACER CON TODAS LAS TABLAS EN LAS QUE ID_PERSONA ESTA COMO HERENCIA*/

	$reg = array();
	$reg["estado"] = '0';
	$reg["_id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rsl = $db->AutoExecute("maquinas", $reg, "UPDATE", "id_maquina='".$__id_maquina."'");
	header("Location:maquinas.php");
	exit();

	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("maquina_eliminar.tpl");

?>