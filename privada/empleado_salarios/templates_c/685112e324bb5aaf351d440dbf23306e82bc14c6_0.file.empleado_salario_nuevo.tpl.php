<?php
/* Smarty version 3.1.36, created on 2021-09-13 01:46:58
  from 'C:\wamp64\www\sis_compania_1\privada\empleado_salarios\templates\empleado_salario_nuevo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ee5d29cfa45_50916005',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '685112e324bb5aaf351d440dbf23306e82bc14c6' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\empleado_salarios\\templates\\empleado_salario_nuevo.tpl',
      1 => 1631511854,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ee5d29cfa45_50916005 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
 <head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<?php echo '<script'; ?>
 type="text/javascript" src="../js/expresiones_regulares.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="js/empleado_salario.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="../../ajax.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript">
		function buscar() {
			var d1, contenedor, url;

			    contenedor = document.getElementById('empleados');
			    contenedor2 = document.getElementById('empleado_seleccionado');
			    contenedor3 = document.getElementById('empleado_insertado');
			    d1 = document.formu.apellidos.value;
			    d2 = document.formu.nombres.value;
			    d3 = document.formu.ci.value;
			    ajax = nuevoAjax();
			    url = "ajax_buscar_empleado.php"

                param = "apellidos="+d1+"&nombres="+d2+"&ci="+d3;
               
                ajax.open("POST", url, true);
                ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                ajax.onreadystatechange = function(){
                	if (ajax.readyState == 4) {
                		contenedor.innerHTML = ajax.responseText;
                        contenedor2.innerHTML = "";
                        contenedor3.innerHTML = "";
                	}
                }
                ajax.send(param);
		}
		function buscar_empleado(id_empleado){
        var d1, contenedor, url;
          contenedor = document.getElementById('empleado_seleccionado');
          contenedor2 = document.getElementById('empleados');
          document.formu.id_empleado.value = id_empleado;

          d1 = id_empleado;

          ajax = nuevoAjax();
          url = "ajax_buscar_empleado1.php";
          param = "id_empleado="+d1;
          ajax.open("POST", url, true);
          ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
          ajax.onreadystatechange = function() {
          	if (ajax.readyState == 4) {
          		contenedor.innerHTML = ajax.responseText;
          		contenedor2.innerHTML = "";
          	}
          }
          ajax.send(param);
		}
		function insertar_empleado(){
			var d1, contenedor, url;
			    contenedor = document.getElementById('empleado_seleccionado');
			    contenedor2 = document.getElementById('empleados');
			    contenedor3 = document.getElementById('empleado_insertado');
			    d1 = document.formu.apellidos1.value;
			    d2 = document.formu.nombres1.value;
			    d3 = document.formu.ci1.value;
			    d4 = document.formu.profesion1.value;
			    d5 = document.formu.direccion1.value;
			    d6 = document.formu.fec_nac1.value;
			    d7 = document.formu.fech_ingreso1.value;
			    d8 = document.formu.fech_salida1.value;
			   

			    if (d3 =="") {
			    	alert("El ci es incorrecto o el campo esta vacio");
			    	document.formu.ci1.focus();
			    	return;
			    }
			    if (d1=="") {
			    	alert("Por favor introduzca Apellidos");
			    	document.formu.apellidos1.focus();
			    	return;
			    }
			    if (d2 == "") {
			    	alert("El nombre es incorrecto o el campo esta vacio");
			    	document.formu.nombres1.focus();
			    	return;
			    }
			    if (d4 == "") {
			    	alert("La profesion esta vacio");
			    	document.formu.profesion1.focus();
			    	return;
			    }
			    if (d6 == "") {
			    	alert("La fecha de nacimiento esta vacio");
			    	document.formu.fec_nac1.focus();
			    	return;
			    }
			    if (d7 == "") {
			    	alert("La fecha de ingreso esta vacio");
			    	document.formu.fech_ingreso1.focus();
			    	return;
			    }
			    if (d8 == "") {
			    	alert("La fecha de salida esta vacio");
			    	document.formu.fech_salida1.focus();
			    	return;
			    }
			    ajax = nuevoAjax();
			    url = "ajax_inserta_empleado.php";
			    param = "apellidos1="+d1+"&nombres1="+d2+"$ci1"+d3+"&profesion="+d4+"&direccion1="+d5+"&fec_nac1="+d6+"&fech_ingreso1="+d7+"&fech_salida1"+d8;
			    ajax.open("POST", url, true);
                ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                ajax.onreadystatechange = function() {
                	if (ajax.readyState == 4) {
                		contenedor.innerHTML = "";
                		contenedor2.innerHTML = "";
                		contenedor3.innerHTML = ajax.responseText;
                	}
                }
                ajax.send(param);
		}
	<?php echo '</script'; ?>
>
</head>
<body>
   <center>
   	<h1>REGISTRAR SALARIO DE EMPLEADO</h1>
   	<form action="empleado_salario_nuevo1.php" method="post" name="formu">
   		<table border="1">
   			<tr>
   				<th align="right">Seleccione Empleado (*)</th>
   				<th>:</th>
   				<td>
   					<table>
   						<tr>
   							<td>
   								<b>Apellidos</b><br />
   								<input type="text" name="apellidos" value="" size="10" onkeyUp="buscar()">
   							</td>
   							<td>
   								<b>Nombres</b><br />
   								<input type="text" name="nombres" value="" size="10" onkeyUp="buscar()">
   							</td>
   							<td>
   								<b>C.I.</b><br />
   								<input type="text" name="ci" value="" size="10" onkeyUp="buscar()">
   							</td>
   						</tr>
   					</table>
   				</td>
   			</tr>
   			<tr>
   				<td colspan="6">
   					<table width="100%">
   						<tr>
   							<td colspan="3">
   								<div id="empleados"> </div>
   							</td>
   						</tr>
   					</table>
   				</td>
   			</tr>
   			<tr>
   				<td colspan="6">
   					<table width="100%">
   						<tr>
   							<td colspan="3">
   								<div id="empleado_seleccionado"> </div>
   							</td>
   						</tr>
   					</table>
   				</td>
   			</tr>
   			<tr>
   				<td colspan="6">
   					<table width="100%">
   						<tr>
   							<td colspan="3">
   								<input type="hidden" name="id_empleado">
   								<div id="empleado_insertado"> </div>
   							</td>
   						</tr>
   					</table>
   				</td>
   			</tr>
   			<tr>
   				<th align="right">Salario (*)</th>
   				<th>:</th>
   				<td><input type="text" name="salario">  </td>
   			</tr>
   			<tr>
   				<th align="right">Fecha de pago (*)</th>
   				<th>:</th>
   				<td><input type="text" name="fecha_salario">  </td>
   			</tr>
   			<tr>
   				<td align="center" colspan="3">
   					<input type="hidden" name="accion" value="">
   					<input type="button" value="Aceptar" onclick="validar();">
   					<input type="button" value="Cancelar" onclick="javascript:location.href='empleado_salarios.php';">
   				</td>
   			</tr>
   		</table>
   		<table>
   			<tr>
   				<td colspan="3" align="center"><b>(*)Campos Obligatorios</b></td>
   			</tr>
   		</table>
   	</form>
   </center>
</body>
</html><?php }
}
