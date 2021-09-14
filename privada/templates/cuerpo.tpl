<!DOCTYPE html>
<head>
	<link rel="stylesheet" href="{$direc_css}" type="text/css">
</head>
<body>
	<form action="claves/" method="post" target="cuerpo">
		{if $nick == ""}
		 <div id="envoltura">
         <div id="contenedor" class="curva">
         <div id="cabecera" class="tac"><img src="../images/hero-bg" alt="Via Gamarra" /></div>
         <div id="cuerpo"><form id="form-login" action="" autocomplete="off" method="post">
         <p><label for="usuario">Usuario:</label></p>
         <p class="mb10"><input id="usuario" name="nick" required="" type="text" autofocus="" /></p>
         <p><label for="contrasenia">Contraseña:</label></p>
         <p class="mb10"><input id="contrasenia" name="password" required="" type="password" /></p>
         <p><input class="boton" name="accion" type="submit" value="Ingresar" /></p>
         </form></div>
         <div id="pie" class="tac">Sistema Web</div>
         </div>
		{/if}
	</form>
</body>
</html>


