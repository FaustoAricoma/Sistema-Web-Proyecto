<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$producto = strip_tags(stripslashes($_POST["producto"]));
$caracteristica = strip_tags(stripslashes($_POST["caracteristica"]));

//$db-> debug = true;
if ($producto or $caracteristica) {
	$sql3 = $db->Prepare("SELECT *
		                  FROM productos
		                  WHERE producto LIKE ?
		                  AND caracteristica LIKE ?
		                  AND estado <> '0'
		                  ");
	$rs3 = $db->GetAll($sql3, array($producto. "%", $caracteristica. "%"));
	if ($rs3) {
		echo "<center>
		        <table class='listado'>
		         <tr>
		          <th>  _PRODUCTO_  </th><th>  _CARACTERISTICA_  </th><th>  _SELECCIONE_  </th>
		         </tr>";
		    foreach ($rs3 as $k => $fila){
		    	     $str1 = $fila["producto"];
		    	     $str2 = $fila["caracteristica"];
		    	echo "<tr>
		    	          <td>".resaltar($producto, $str1)."</td>
		    	          <td>".resaltar($caracteristica, $str2)."</td>
		    	          <td align='center'>
		    	            <input type='radio' name='seleccione' value='".$fila['id_producto']."' onclick='mostrar(".$fila["id_producto"].")'>
		    	          </td>

		    	       </tr>";
		    }
		    echo "</table>
		    </center>";
	}else{
		echo "<center><b> EL PRODUCTO NO EXISTE!!</b></center><br>";
	}

}
?>