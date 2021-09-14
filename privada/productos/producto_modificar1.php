<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_proveedor = $_REQUEST["id_proveedor"];
$__id_producto = $_REQUEST["id_producto"];
$__producto = $_POST["producto"];
$__caracteristica = $_POST["caracteristica"];

//$db->debug=true;

$smarty = new Smarty;

     $reg = array();
     $reg["id_proveedor"] = $__id_proveedor;
     $reg["producto"] = $__producto;
     $reg["caracteristica"] = $__caracteristica;
     $reg["usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("productos", $reg, "UPDATE", "id_producto='".$__id_producto."'");

if ($rs1) {
	header("Location: productos.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
     $smarty->assign("id_producto", $__id_producto);
	$smarty->display("producto_modificar1.tpl");
}
?>