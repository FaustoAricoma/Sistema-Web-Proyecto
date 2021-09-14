<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:19:27
  from 'C:\wamp64\www\sis_compania_1\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea71f930292_22618249',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c07261192325390966474c34b7070ec0ef79c294' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\templates\\menu_sup.tpl',
      1 => 1623388901,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea71f930292_22618249 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>

     <div class="cabecera">
     <img src="compania/logos/<?php echo $_smarty_tpl->tpl_vars['logo_compania']->value;?>
" width="8%">
     <div class="titulo">
      COMPAÑIA DE LIMPIEZA "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
"
	 </div><br>
     <div class="usuario">
    	Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b>
        Rol:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b>
     </div>
     </div>
</body>
</html><?php }
}
