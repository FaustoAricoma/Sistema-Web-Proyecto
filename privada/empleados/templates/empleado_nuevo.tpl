<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_empleado.js"></script>
</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="empleado_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR EMPLEADO</h2>
		<p>
			<input type="text" name="ci" size="10" placeholder="C.I.">
		</p>	
		 <p>
		 	<input type="text" name="nombres" size="30" placeholder="Nombres" onkeyup="this.value=this.value.toUpperCase()">(*)
		 </p>
		  <p>
		 	<input type="text" name="apellidos" size="40" placeholder="Apellidos" onkeyup="this.value=this.value.toUpperCase()">(*)
		 </p>
		  <p>
		 	<input type="text" name="fec_nac" size="15" placeholder="fecha de Nacimiento" >
		 </p>
		 <p>
		 	<input type="text" name="direccion" size="40" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">
		 </p> <p>
		 	<input type="text" name="profesion" size="20" placeholder="Profesion" onkeyup="this.value=this.value.toUpperCase()">(*)
		 </p>
		 <p>
		 	<input type="hidden" name="accion" value="">
		 	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
		 	<input type="button" value="Cancelar" onclick="javascript:location.href='empleados.php';" class="boton2">
		 </p>
		 <p><b><font color="red">(*) Campos Obligatorios</font></b></p>
		</form>
	</div>
</body>
</html>