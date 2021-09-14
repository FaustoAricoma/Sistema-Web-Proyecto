<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$genero = $_REQUEST["genero"];

//$db->debug=true;

$smarty = new Smarty;
if ($genero == "T"){
$sql = $db->Prepare("SELECT *
	                 FROM _personas 
	                 WHERE estado <> 0
	                ");
    $rs = $db->GetAll($sql);
}else{
	$sql = $db->Prepare("SELECT *
		                 FROM _personas
		                 WHERE genero = ?
		                 AND estado <> 0
		                 ");
	$rs = $db->GetAll($sql, array($genero));
}

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
$smarty->assign("personas_genero1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rtp_personas_genero1.tpl");

?>	