<?php
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM empleados em
	                 WHERE em.estado <> '0'
	                 ORDER BY em.id_empleado DESC");

$rs = $db->GetAll($sql);

$smarty->assign("empleados", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("empleado_salario_nuevo.tpl");
?>