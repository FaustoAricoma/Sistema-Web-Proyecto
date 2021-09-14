<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;


$sql = $db->Prepare("SELECT *
	FROM empleado_salarios em_sa
	INNER JOIN empleados em ON em.id_empleado = em_sa.id_empleado
	WHERE em_sa.estado <> '0'
 	AND em.estado <> '0'
	ORDER BY em_sa.id_empleado_salario DESC
	");
$rs = $db->GetAll($sql);

$smarty->assign("empleado_salarios", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("empleado_salarios.tpl");
?>