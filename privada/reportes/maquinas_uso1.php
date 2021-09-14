<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM maquinas
	                 WHERE estado <> '0'
	                 ORDER BY (id_maquina) DESC

	                ");
$rs = $db->GetAll($sql);

$sql1 = $db->Prepare("SELECT*
	                  FROM compania_limpieza
	                  WHERE id_compania_limpieza = 1
	                  AND estado <>'0'
	                ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_compania = $rs1[0]["logo_compania"];

$fecha= date("Y-m-d H:i:s");

$smarty->assign("maquinas", $rs);
$smarty->assign("logo_compania", $logo_compania);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("maquinas_uso1.tpl");

?>	