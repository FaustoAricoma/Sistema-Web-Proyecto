<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_persona = $_REQUEST["id_persona"];

$smarty = new Smarty;

$sql1 = $db->Prepare("SELECT *
					  FROM 	_personas
					  WHERE id_persona = ?
					 ");
$rs = $db->GetAll($sql1, array($__id_persona));
$smarty->assign("persona", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("persona_modificar.tpl");
?>
