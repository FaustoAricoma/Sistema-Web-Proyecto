<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_producto.js"></script>
</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="producto_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR PRODUCTO</h2>
			 <b>Proveedores</b><br>
			  <select name="id_proveedor">
			  	<option value="">--- seleccione---</option>
			  	{foreach item=r from=$proveedores}
			  	  <option value="{$r.id_proveedor}">{$r.nombre}</option>
			  	{/foreach}
			  </select>(*)
		 <p>
		 	<b>Producto: </b> <input type="text" name="producto" size="15" placeholder="Nombre" >(*)
		 </p>
		 <p>
		 	<b>Caracteristicas</b><br><textarea name="caracteristica" rows="3" cols="20"></textarea>(*)
		 </p>
		 <p>
		 	<input type="hidden" name="accion" value="">
		 	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
		 	<input type="button" value="Cancelar" onclick="javascript:location.href='productos.php';" class="boton2">
		 </p>
		 <p><b>(*) Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>