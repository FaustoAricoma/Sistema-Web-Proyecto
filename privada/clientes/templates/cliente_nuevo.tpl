<!DOCTYPE html>
<html>
 <head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_cliente.js"></script>
 </head>
<body>
	<div class="formu_ingreso_datos">
		<form action="cliente_nuevo1.php" method="post" name="formu">
			<h2>REGISTRO DE CLIENTE</h2>
			  
			 <p>
			   <input type="text" name="nombre" size="25" placeholder="Nombre y Apellido" >(*)
			 </p>
			 <p>
			   <input type="text" name="direccion" size="20" placeholder="Direccion">(*)
			 </p>
			 <p>
			   <input type="text" name="telefono" size="10" placeholder="Telefono">(*)
			 </p>
			 <p>
			   <input type="text" name="nit" size="10" placeholder="Nit">
			 </p>
             <p>
             	<input type="hidden" name="accion" value="">
             	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
             	<input type="button" value="Cancelar" onclick="javascript:location.href='clientes.php';" class="boton2">
             </p>
             <p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>