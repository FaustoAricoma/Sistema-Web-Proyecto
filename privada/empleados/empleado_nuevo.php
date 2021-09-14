<?php
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM compania_limpieza c_l
	                 WHERE c_l.estado <> 1
	                 ORDER BY c_l.id_compania_limpieza DESC");

$rs = $db->GetAll($sql);

$smarty->assign("empleados", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("empleado_nuevo.tpl");
?>
