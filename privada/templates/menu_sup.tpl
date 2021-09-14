<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="{$direc_css}" type="text/css">
</head>
<body>

     <div class="cabecera">
     <img src="compania/logos/{$logo_compania}" width="8%">
     <div class="titulo">
      COMPAÑIA DE LIMPIEZA "{$nombre}"
	 </div><br>
     <div class="usuario">
    	Usuario:<b>{$sesion.usuario}</b>
        Rol:<b>{$sesion.rol}</b>
     </div>
     </div>
</body>
</html>