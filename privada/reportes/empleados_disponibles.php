<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM empleados
	                 WHERE estado <> '0'
	                 ORDER BY (id_empleado) DESC

	                ");
$rs = $db->GetAll($sql);


$smarty->assign("empleados", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("empleados_disponibles.tpl");

?>		