<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

//$db->debug=true;

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
	                 FROM clientes cl
	                 INNER JOIN clientes_servicios cs ON cs.id_cliente = cl.id_cliente
	                 
	                 WHERE cl.estado <> '0'
	                 AND cs.estado <> '0'
	                 ORDER BY (cs.id_cliente) DESC

	                ");
$rs = $db->GetAll($sql);


$smarty->assign("clientes_servicios", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("clientes_servicios.tpl");

?>		