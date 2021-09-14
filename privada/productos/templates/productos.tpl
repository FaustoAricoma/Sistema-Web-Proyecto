<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
   <div class="titulo_listado">
   	<h1>PRODUCTOS</h1>
   </div>
   <div class="titulo_nuevo">
   	<form name="formNuevo" method="post" action="producto_nuevo.php">
   		<a href="javascript:document.formNuevo.submit();">Nuevo>>> </a>
   	</form>
   </div>

  <center>
  	<table class="listado">
  		<tr>
  			<th>NRO</th><!--<th>COMPAÑIA</th>--><th>PROVEEDOR</th><th>NOMBRE DEL PRODUCTO</th><th>CARACTERISTICA</th>
        <th><img src="../../img/modificar.png"></th><th><img src="../../img/borrar.png"></th>
  		</tr>
  		{assign var="b" value="1"}
  		{foreach item=r from=$productos}
  		<tr>
  			<td align="center">{$b}</td>
        <!--<td>{$r.nombre}-->
        <td>{$r.nombre}</td>
  			<td>{$r.producto}</td>
  			<td>{$r.caracteristica}</td>
  			<td align="center">
  				<form name="formModif{$r.id_producto}" method="post" action="producto_modificar.php">
  					<input type="hidden" name="id_producto" value="{$r.id_producto}">
  					<input type="hidden" name="id_proveedor" value="{$r.id_proveedor}">
  					<a href="javascript:document.formModif{$r.id_producto}.submit();" title="Modificar Productos">
  						Modificar>>
  					</a>
  				</form>
  			</td>
  			<td>
  				<form name="formElimi{$r.id_producto}" method="post" action="producto_eliminar.php">
  					<input type="hidden" name="id_producto" value="{$r.id_producto}">
  					<a href="javascript:document.formElimi{$r.id_producto}.submit();" title="Eliminar Producto" onclick='javascript:return(confirm(" Desea realmente Eliminar al producto:::{$r.usuario}?"));'>
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