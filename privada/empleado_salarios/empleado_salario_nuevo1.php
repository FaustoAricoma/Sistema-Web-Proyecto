<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_empleado = $_POST["id_empleado"];
$__salario = $_POST["salario"];
$__fecha_salario =$_POST["fecha_salario"];

//$db->debug=true;

$smarty = new Smarty;

     $reg = array();
     $reg["id_empleado"] = $__id_empleado;
     $reg["salario"] = $__salario;
     $reg["fecha_salario"] =$__fecha_salario;
     $reg["fec_insercion"] = date("Y-m-d H:i:s");
     $reg["estado"] = 1;
     $reg["usuario"] = $_SESSION["sesion_id_usuario"];
     $rs1 = $db->AutoExecute("empleado_salarios", $reg, "INSERT");

if ($rs1) {
	header("Location: empleado_salarios.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron !!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("empleado_salario_nuevo1.tpl");
}
?>