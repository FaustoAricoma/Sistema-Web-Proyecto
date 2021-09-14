<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_maquina = $_REQUEST["id_maquina"];

$smarty = new Smarty;

$sql1 = $db->Prepare("SELECT *
					  FROM 	maquinas
					  WHERE id_maquina = ?
					 ");
$rs = $db->GetAll($sql1, array($__id_maquina));
$smarty->assign("maquina", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("maquina_modificar.tpl");
?>