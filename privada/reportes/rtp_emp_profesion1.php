<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$profesion = $_REQUEST["profesion"];

//$db->debug=true;

$smarty = new Smarty;
if ($profesion == "Todos"){
$sql = $db->Prepare("SELECT *
	                 FROM empleados 
	                 WHERE estado <> 0
	                ");
    $rs = $db->GetAll($sql);
}else{
	$sql = $db->Prepare("SELECT *
		                 FROM empleados
		                 WHERE profesion = ?
		                 AND estado <> 0
		                 ");
	$rs = $db->GetAll($sql, array($profesion));
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
$smarty->assign("emp_profesion1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rtp_emp_profesion1.tpl");

?>	