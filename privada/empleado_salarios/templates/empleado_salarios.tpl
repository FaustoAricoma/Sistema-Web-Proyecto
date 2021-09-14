<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
   <div class="titulo_listado">
   	<h1>SALARIOS DE EMPLEADOS</h1>
   </div>
   <div class="titulo_nuevo">
   	<form name="formNuevo" method="post" action="empleado_salario_nuevo.php">
   		<a href="javascript:document.formNuevo.submit();">Nuevo>>> </a>
   	</form>
   </div>

  <center>
  	<table class="listado">
  		<tr>
  			<th>NRO</th><th>EMPLEADO</th><th>CEDULA <br> IDENTIDAD</th><th>SALARIO <br> Bs </th><th>FECHA <br> DE PAGO</th>
        <th><img src="../../img/modificar.png"></th><th><img src="../../img/borrar.png"></th>
  		</tr>
  		{assign var="b" value="1"}
  		{foreach item=r from=$empleado_salarios}
  		<tr>
  			<td align="center">{$b}</td>
  			<td>{$r.nombres} {$r.apellidos}</td>
  			<td align="center">{$r.ci}</td>
  			<td align="center">{$r.salario}</td>
        <td align="center">{$r.fecha_salario}</td>
  			<td align="center">
  				<form name="formModif{$r.id_empleado_salario}" method="post" action="empleado_salario_modificar.php">
  					<input type="hidden" name="id_empleado_salario" value="{$r.id_empleado_salario}">
  					<input type="hidden" name="id_empleado" value="{$r.id_empleado}">
  					<a href="javascript:document.formModif{$r.id_empleado_salario}.submit();" title="Modificar salario de empleado">
  						Modificar>>
  					</a>
  				</form>
  			</td>
  			<td>
  				<form name="formElimi{$r.id_empleado_salario}" method="post" action="empleado_salario_eliminar.php">
  					<input type="hidden" name="id_empleado_salario" value="{$r.id_empleado_salario}">
  					<a href="javascript:document.formElimi{$r.id_empleado_salario}.submit();" title="Eliminar Empleado salario" onclick='javascript:return(confirm(" Desea realmente Eliminar al empleado_salario:::{$r.usuario}?"));'>
  						Eliminar
  					</a>
  				</form>
  			</td>
  			{assign var="b" value="`$b+1`"}
  			{/foreach}
  		</tr>
  	</table>
  </center>
</body>
</html>