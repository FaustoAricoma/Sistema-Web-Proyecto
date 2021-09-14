<?php
session_start(); //abrir la sesion
//require_once("../smarty/Smarty.class.php");
require_once("../smarty/libs/Smarty.class.php");
require_once("../conexion.php");

$smarty = new Smarty;

//$db->debug=true;
if (isset($_SESSION["sesion_id_usuario"])) {
	$sesion = array ("id_usuario" => $_SESSION["sesion_id_usuario"],
					"usuario" => $_SESSION["sesion_usuario"],
					"id_rol" => $_SESSION["sesion_id_rol"],
					"rol" => $_SESSION["sesion_rol"],
					);
	$login = "NO";
}else{
	$sesion = array("id_usuario" => "----",
					"usuario" => "----",
					"id_rol" => "----",
					"rol" => "---",
					);
	$login = "SI";
}

/*PARA VOLVER AUTOGESTIONABLE EL NOMBRE DE LA COMPAÑIA Y EL LOGO*/
   $sql1 = $db->Prepare("SELECT * 
   	FROM compania_limpieza 
   	WHERE id_compania_limpieza = 1 
   	AND estado <> 'X' 
   	");
     $rs1 = $db->GetAll($sql1);
     $nombre = $rs1[0]["nombre"];
     $logo_compania = $rs1[0]["logo_compania"];
     $smarty->assign("nombre", $nombre);
     $smarty->assign("logo_compania", $logo_compania);
     
$smarty->assign("sesion", $sesion);
$smarty->assign("login", $login);
$smarty->assign("direc_css", $direc_css);
$smarty->display("menu_sup.tpl");
?>