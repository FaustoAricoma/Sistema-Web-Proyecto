<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$tipo = strip_tags(stripslashes($_POST["tipo"]));

//$db-> debug = true;
if ($nombre or $tipo) {
	$sql3 = $db->Prepare("SELECT *
		                  FROM maquinas
		                  WHERE nombre LIKE ?
		                  AND tipo LIKE ?
		                  AND estado <> '0'
		                  ");
	$rs3 = $db->GetAll($sql3, array($nombre. "%", $tipo. "%"));
	if ($rs3) {
		echo "<center>
		        <table class='listado'>
		         <tr>
		           <th>NOMBRE</th><th>TIPO</th><th>SELECCIONE</th>
		         </tr>";
		    foreach ($rs3 as $k => $fila){
		    	     $str = $fila["nombre"];
		    	     $str1 = $fila["tipo"];
		    	echo "<tr>
		    	          <td>".resaltar($nombre, $str)."</td>
		    	          <td>".resaltar($tipo, $str1)."</td>
		    	          <td align='center'>
		    	            <input type='radio' name='seleccione' value='".$fila['id_maquina']."' onclick='mostrar(".$fila["id_maquina"].")'>
		    	          </td>

		    	       </tr>";
		    }
		    echo "</table>
		    </center>";
	}else{
		echo "<center><b> LA MAQUINA NO EXISTE!!</b></center><br>";
	}

}
?>