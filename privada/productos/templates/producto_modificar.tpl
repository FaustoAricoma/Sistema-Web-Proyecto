<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_producto.js"></script>
</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="producto_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR PRODUCTO</h2>
			 <b>Proveedores</b><br>
			  <select name="id_proveedor">
			  	{foreach item=r from=$proveedor}
			  	  <option value="{$r.id_proveedor}">{$r.nombre}</option>
			  	{/foreach}
			  	{foreach item=r from=$proveedores}
			  	  <option value="{$r.id_proveedor}">{$r.nombre}</option>
			  	{/foreach}
			  </select>(*)
	    {foreach item=r from=$producto}
		 <p>
		 	<b>Producto: </b> <input type="text" name="producto" size="15" placeholder="Nombre"  value="{$r.producto}">(*)
		 </p>
		 <p>
		 	<b>Caracteristicas</b><br><textarea name="caracteristica" rows="3" cols="20" value="{$r.caracteristica}"></textarea>(*)
		 </p>
		 <p>
		 	<input type="hidden" name="accion" value="">
		 	<input type="hidden" name="id_producto" value="{$r.id_producto}">
		 	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
		 	<input type="button" value="Cancelar" onclick="javascript:location.href='productos.php';" class="boton2">
		 </p>
		 {/foreach}
		 <p><b>(*) Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>