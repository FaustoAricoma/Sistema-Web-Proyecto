<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_producto = $_REQUEST["id_producto"];

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM productos
	                 WHERE id_producto =?
	                 AND estado <> 0
	                ");
    $rs = $db->GetAll($sql, array($id_producto));


$sql1 = $db->Prepare("SELECT*
	                  FROM compania_limpieza
	                  WHERE id_compania_limpieza = 1
	                  AND estado <> 0
	                ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_compania = $rs1[0]["logo_compania"];
$smarty->assign("logo_compania", $logo_compania);

$fecha= date("Y-m-d H:i:s");
$smarty->assign("producto", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("fichas_tecnicas_productos1.tpl");

?>	