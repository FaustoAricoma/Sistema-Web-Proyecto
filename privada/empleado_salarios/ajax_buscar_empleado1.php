<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_empleado = $_POST["id_empleado"];

//$db-> debug = true;
	$sql3 = $db->Prepare("SELECT *
		                  FROM empleados
		                  WHERE id_empleado = ?
		                  AND estado <> '0'
		                  ");

	$rs3 = $db->GetAll($sql3, array($id_empleado));

		echo "<center>
		        <table width='60%' border='1'>
		         <tr>
		           <th colspan='4'>Datos Empleados</th>
		         </tr>";
		    foreach ($rs3 as $k => $fila){
		    	echo "<tr>
		    	          <td align='center'>".$fila["ci"]."</td>
		    	          <td>".$fila["apellidos"]."</td>
		    	          <td>".$fila["nombres"]."</td>
		    	       </tr>";
		    }
		    echo "</table>
		    </center>";
	
?>