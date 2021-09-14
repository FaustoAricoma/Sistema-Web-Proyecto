<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_persona = $_REQUEST["id_persona"];

$smarty = new Smarty;

//$db->debug=true;

/*LAS CONSULTAS SE DEVEN HACER CON TODAS LAS TABLAS EN LAS QUE ID_PERSONA ESTA COMO HERENCIA*/


$sql = $db->Prepare("SELECT *
					  FROM 	_usuarios
					  WHERE id_persona = ?
					  AND estado <> '0'
					 ");
$rs = $db->GetAll($sql, array($__id_persona));


if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["_id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rsl = $db->AutoExecute("_personas", $reg, "UPDATE", "id_persona='".$__id_persona."'");
	header("Location:personas.php");
	exit();

}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("persona_eliminar.tpl");
}
?>