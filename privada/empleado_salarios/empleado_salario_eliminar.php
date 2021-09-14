<?php
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");

$__id_empleado_salario = $_REQUEST["id_empleado_salario"];

$smarty = new Smarty;

$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE ID_USUARIO ESTA COMO HERENCIA*/


$rs = $db->GetAll($sql, array($__id_empleado_salario));

  


	 $reg = array();
     $reg["estado"] = '0';
     $reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("empleado_salarios", $reg, "UPDATE", "id_empleado_salario='".$__id_empleado_salario."'");
	header("Location: empleado_salarios.php");
	exit();

	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("empleado_salario_eliminar.tpl");

?>