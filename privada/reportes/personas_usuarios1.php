<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM _personas p
	                 INNER JOIN _usuarios u ON p.id_persona = u.id_persona
	                 WHERE p.estado <> '0'
	                 AND u.estado <> '0'
	                 ORDER BY (u.id_persona) DESC

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

$fecha = date("Y-m-d H:i:s");

$smarty->assign("personas_usuarios", $rs);
$smarty->assign("logo_compania", $logo_compania);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("personas_usuarios1.tpl");

?>	