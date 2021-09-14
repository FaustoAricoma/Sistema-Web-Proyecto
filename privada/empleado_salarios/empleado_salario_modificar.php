<?php
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_empleado_salario = $_REQUEST["id_empleado_salario"];
$__id_empleado = $_REQUEST["id_empleado"];

$smarty = new Smarty;

//$db-> debug = true;

$sql = $db->Prepare("SELECT *
	                 FROM empleado_salarios
	                 WHERE id_empleado_salario = ?
	                ");
$rs = $db->GetAll($sql, array($__id_empleado_salario));

$sql2 = $db->Prepare("SELECT *
	                 FROM empleados
	                 WHERE id_empleado = ?
	                 AND estado <> '0'   
                 ");

$rs2 = $db->GetAll($sql2, array($__id_empleado));

$sql3 = $db->Prepare("SELECT*
	                  FROM empleados
	                  WHERE id_empleado <> ?
	                  AND estado <> '0'
	                 ");
$rs3 = $db->GetAll($sql3, array($__id_empleado));

$smarty->assign("empleado_salario", $rs);
$smarty->assign("empleado", $rs2);
$smarty->assign("empleados", $rs3);
$smarty->assign("direc_css", $direc_css);
$smarty->display("empleado_salario_modificar.tpl");
?>