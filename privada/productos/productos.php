<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
	FROM  productos pro
	INNER JOIN proveedores prov ON pro.id_proveedor = prov.id_proveedor
	WHERE pro.estado <> '0'
	AND prov.estado <> '0'
	ORDER BY pro.id_producto DESC
	");
$rs = $db->GetAll($sql);

$smarty->assign("productos", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("productos.tpl");
?>