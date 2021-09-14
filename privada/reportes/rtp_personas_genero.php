<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");


$smarty = new Smarty;

//$db-> debug = true;

$smarty->assign("direc_css", $direc_css);
$smarty->display("rtp_personas_genero.tpl");
?>