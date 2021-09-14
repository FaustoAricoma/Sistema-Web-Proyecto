<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$fecha1 = $_REQUEST["fecha1"];
$fecha2 = $_REQUEST["fecha2"];

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM _personas 
	                 WHERE fec_insercion BETWEEN ? AND ?
	                 AND estado <> 0
	                
	                ");
$rs = $db->GetAll($sql, array($fecha1, $fecha2));

$sql1 = $db->Prepare("SELECT*
	                  FROM compania_limpieza
	                  WHERE id_compania_limpieza = 1
	                  AND estado <> 0
	                ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_compania = $rs1[0]["logo_compania"];


$smarty->assign("personas_fechas1", $rs);
$smarty->assign("logo_compania", $logo_compania);
$smarty->assign("fecha1", $fecha1);
$smarty->assign("fecha2", $fecha2);

$smarty->assign("direc_css", $direc_css);
$smarty->display("personas_fechas1.tpl");

?>	