<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:19:27
  from 'C:\wamp64\www\sis_compania_1\privada\templates\cuerpo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea71fa718d3_94448241',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd46a05786f9e130b0490bcdf1890ada73a399d40' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\templates\\cuerpo.tpl',
      1 => 1630644516,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea71fa718d3_94448241 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	<form action="claves/" method="post" target="cuerpo">
		<?php if ($_smarty_tpl->tpl_vars['nick']->value == '') {?>
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
		<?php }?>
	</form>
</body>
</html>


<?php }
}
