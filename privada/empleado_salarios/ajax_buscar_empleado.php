<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");


$apellidos = strip_tags(stripslashes($_POST["apellidos"]));
$nombres = strip_tags(stripslashes($_POST["nombres"]));
$ci = strip_tags(stripslashes($_POST["ci"]));

//$db->debug=true;

if ($apellidos or $nombres or $ci) {
	$sql3 = $db->Prepare("SELECT *
		                  FROM empleados
		                  WHERE apellidos LIKE ?
		                  AND nombres LIKE ?
		                  AND ci LIKE ?
		                  AND estado <> '0'
		                  ");
	$rs3 = $db->GetAll($sql3, array($apellidos."%",$nombres."%",$ci."%"));

	if ($rs3) {
		echo "<center>
    <table width='60%' border='1'>
        <tr>
            <th>C.I.</th><th>APELLIDOS</th><th>NOMBRES<th>?</th>
        </tr>";
     foreach($rs3 as $k => $fila){
     	     $str = $fila["ci"];
     	     $str1 =$fila["apellidos"];
     	     $str2 = $fila["nombres"];
     	echo "<tr>
     	           <td aling='center'>".resaltar($ci, $str). "</td>
     	           <td>".resaltar($apellidos, $str1)."</td>
     	           <td>".resaltar($nombres, $str2)."</td>
     	           <td aling='center'>
                        <input type='radio' name='opcion' value='' onClick='buscar_empleado(".$fila["id_empleado"].")'>
     	           </td>
     	       </tr>";
     }
     echo"</table>
   </center>";
	}
	else{
		echo "<center><b> EL EMPLEADO NO EXISTE !! </b></center><br>";
		echo "<center>
		       <table class='listado'>
		         <tr>
		           <td><b>(*)CI</b></td>
		           <td><input type='text' name='ci1' size='10'></td>
		         </tr>
		         <tr>
		           <td><b>Apellidos</b></td>
		           <td><input type='text' name='apellidos1' size='10'></td>
		         </tr>
		         <tr>
		           <td><b>Nombres</b></td>
		           <td><input type='text' name='nombres1' size='10'></td>
		         </tr>
		         <tr>
		           <td><b>Profesion</b></td>
		           <td><input type='text' name='profesion1' size='10' ></td>
		         </tr>
		         <tr>
		           <td><b>Direccion</b></td>
		           <td><input type='text' name='direccion1' size='10'></td>
		         </tr>
		         <tr>
		           <td><b>Fecha de Nacimiento</b></td>
		           <td><input type='text' name='fec_nac1' size='10'></td>
		         </tr>
		        <tr>
		           <td><b>Fecha de ingreso</b></td>
		           <td><input type='text' name='fech_ingreso1' size='10'></td>
		         </tr>
		            <tr>
		           <td><b>Fecha de Salida</b></td>
		           <td><input type='text' name='fech_salida1' size='10'></td>
		         </tr>
		         <tr>
		           <td aling='center' colspan='2'>
		            <input type='button' value='ADICIONAR EMPLEADO' onClick='insertar_empleado()'>
		            </td>
		          </tr>
                  </table>
                  </center>
		         ";
	}
}
 ?>