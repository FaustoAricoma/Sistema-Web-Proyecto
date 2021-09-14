<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_cliente = $_REQUEST["id_cliente"];

$smarty = new Smarty;

//$db->debug=true;

/*LAS CONSULTAS SE DEVEN HACER CON TODAS LAS TABLAS EN LAS QUE ID_PERSONA ESTA COMO HERENCIA*/


$sql = $db->Prepare("SELECT *
					  FROM 	clientes_servicios
					  WHERE id_cliente = ?
					  AND estado <> '0'
					 ");
$rs = $db->GetAll($sql, array($__id_cliente));


if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["_id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rsl = $db->AutoExecute("clientes", $reg, "UPDATE", "id_cliente='".$__id_cliente."'");
	header("Location:clientes.php");
	exit();

}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron !!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("cliente_eliminar.tpl");
}
?>