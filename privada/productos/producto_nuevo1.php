<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_proveedor = $_POST["id_proveedor"];
$__producto = $_POST["producto"];
$__caracteristica = $_POST["caracteristica"];


//$db->debug=true;

$smarty = new Smarty;

     $reg = array();
     $reg["id_compania_limpieza"] =1;
     $reg["id_proveedor"] = $__id_proveedor;
     $reg["producto"] = $__producto;
     $reg["caracteristica"] = $__caracteristica;
     $reg["fec_insercion"] = date("Y-m-d H:i:s");
     $reg["estado"] = 1;
     $reg["usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("productos", $reg, "INSERT");

if ($rs1) {
	header("Location: productos.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("producto_nuevo1.tpl");
}
?>