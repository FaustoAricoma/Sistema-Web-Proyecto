<!DOCTYPE html>
<html>
 <head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_maquina.js"></script>
 </head>
<body>
	<div class="formu_ingreso_datos">
		<form action="maquina_nuevo1.php" method="post" name="formu">
			<h2>REGISTRO DE MAQUINA</h2>
			  
			 <p>
			   <input type="text" name="nombre" size="25" placeholder="Nombre de maquina" >(*)
			 </p>
			 <p>
			   <input type="text" name="tipo" size="20" placeholder="tipo de uso">(*)
			 </p>
             <p>
             	<input type="hidden" name="accion" value="">
             	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
             	<input type="button" value="Cancelar" onclick="javascript:location.href='maquinas.php';" class="boton2">
             </p>
             <p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>