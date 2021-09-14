<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
	FROM empleados e
	INNER JOIN compania_limpieza c_l ON e.id_compania_limpieza = c_l.id_compania_limpieza
	WHERE e.estado <> '0'
	AND c_l.estado <> '0'
	ORDER BY e.id_empleado DESC
	");
$rs = $db->GetAll($sql);

$smarty->assign("empleados", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("empleados.tpl");
?>