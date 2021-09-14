<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$tipo = $_REQUEST["id_servicio"];

//$db->debug=true;

$smarty = new Smarty;
if ($tipo == "T"){
$sql = $db->Prepare("SELECT *
	                 FROM clientes_servicios 
	                 WHERE estado <> 0
	                ");
    $rs = $db->GetAll($sql);
}else{
	$sql = $db->Prepare("SELECT *
		                 FROM clientes_servicios cs
		                 INNER JOIN clientes cl ON cs.id_cliente =cl.id_cliente
		                 INNER JOIN servicios se ON cs.id_servicio =se.id_servicio
		                 WHERE cs.id_servicio = ?
		                 AND cs.estado <> 0
		                 ");
	$rs = $db->GetAll($sql, array($tipo));
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
$smarty->assign("servicios_tipo1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rtp_servicios_tipo1.tpl");

?>	