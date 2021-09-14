<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
   <div class="titulo_listado">
   	<h1>EMPLEADOS</h1>
   </div>
   <div class="titulo_nuevo">
   	<form name="formNuevo" method="post" action="empleado_nuevo.php">
   		<a href="javascript:document.formNuevo.submit();">Nuevo>>> </a>
   	</form>
   </div>

  <center>
  	<table class="listado">
  		<tr>
  			<th>NRO</th><th>ID_COMPAÑIA</th><th>CI</th><th>NOMBRES Y APELLIDOS</th><th>FECHA_NACIMIENTO</th><th>DIRECCION</th><th>PROFESION</th>
        <th><img src="../../img/modificar.png"></th><th><img src="../../img/borrar.png"></th>
  		</tr>
  		{assign var="b" value="1"}
  		{foreach item=r from=$empleados}
  		<tr>
  			<td align="center">{$b}</td>
        <td>{$r.id_compania_limpieza}</td>
  			<td>{$r.ci}</td>
  			<td>{$r.nombres} {$r.apellidos}</td>
        <td>{$r.fec_nac}</td>
        <td>{$r.direccion}</td>
        <td>{$r.profesion}</td>
  			<td align="center">
  				<form name="formModif{$r.id_empleado}" method="post" action="empleado_modificar.php">
  					<input type="hidden" name="id_empleado" value="{$r.id_empleado}">
  					<!--<input type="hidden" name="id_compania_limpieza" value="{$r.id_compania_limpieza}">-->
  					<a href="javascript:document.formModif{$r.id_empleado}.submit();" title="Modificar Empleado">
  						Modificar>>
  					</a>
  				</form>
  			</td>
  			<td>
  				<form name="formElimi{$r.id_empleado}" method="post" action="empleado_eliminar.php">
  					<input type="hidden" name="id_empleado" value="{$r.id_empleado}">
  					<a href="javascript:document.formElimi{$r.id_empleado}.submit();" title="Eliminar Empleado" onclick='javascript:return(confirm(" Desea realmente Eliminar al empleado:::{$r.nombres}?"));'>
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