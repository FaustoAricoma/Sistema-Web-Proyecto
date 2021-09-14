<?php
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");

$__id_producto = $_REQUEST["id_producto"];

$smarty = new Smarty;

$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE ID_USUARIO ESTA COMO HERENCIA*/


$rs = $db->GetAll($sql, array($__id_producto));

  


	 $reg = array();
     $reg["estado"] = '0';
     $reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("productos", $reg, "UPDATE", "id_producto='".$__id_producto."'");
	header("Location: productos.php");
	exit();

	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("producto_eliminar.tpl");

?>