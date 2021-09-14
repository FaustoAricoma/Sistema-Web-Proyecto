<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM clientes cl
	                 INNER JOIN clientes_servicios cs ON cs.id_cliente = cl.id_cliente
	                 INNER JOIN servicios ser ON ser.id_servicio =cs.id_servicio
	                 WHERE cl.estado <> '0'
	                 AND cs.estado <> '0'
	                 AND ser.estado <> '0'
	                 ORDER BY (cs.id_cliente) DESC

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

$smarty->assign("clientes_servicios", $rs);
$smarty->assign("logo_compania", $logo_compania);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("clientes_servicios1.tpl");

?>	