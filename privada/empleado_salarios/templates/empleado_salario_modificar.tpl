<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<link rel="stylesheet" type="text/css" href="../calendario/tcal.css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/empleado_salario.js"></script>
	<script type="text/javascript" src="../calendario/tcal.js"></script>
    <meta charset="utf-8">

</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="empleado_salario_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR SALARIO DE EMPLEADO</h2>
			 <b>Empleado</b>
			  <select name="id_empleado">
			    {foreach item=r from=$empleado}
			  	  <option value="{$r.id_empleado}">{$r.nombres}-{$r.apellidos}-{$r.ci}</option>
			  	{/foreach}
			  	{foreach item=r from=$empleados}
			  	  <option value="{$r.id_empleado}">{$r.nombres}-{$r.apellidos}-{$r.ci}</option>
			  	{/foreach}
			  </select>(*)
		 {foreach item=r from=$empleado_salario}
		
		 <p>
		 	<b>Salario :</b> <input type="text" name="salario" size="15" value="{$r.salario}">(*)
		 </p>
		 <p>
		 	<b>Fecha Pago :</b> <input type="text" name="fecha_salario" class="tcal" value="{$r.fecha_salario}" / size="10">
		 </p>
		 <p>
		 	<input type="hidden" name="accion" value="">
		 	<input type="hidden" name="id_empleado_salario" value="{$r.id_empleado_salario}">
		 	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
		 	<input type="button" value="Cancelar" onclick="javascript:location.href='empleado_salarios.php';" class="boton2">
		 </p>
		  {/foreach}
		 <p><b>(*) Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>