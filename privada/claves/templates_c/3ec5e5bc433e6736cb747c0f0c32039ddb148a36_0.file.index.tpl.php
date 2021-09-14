<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:19:37
  from 'C:\wamp64\www\sis_compania_1\privada\claves\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea7290bdf23_57695788',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3ec5e5bc433e6736cb747c0f0c32039ddb148a36' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\claves\\templates\\index.tpl',
      1 => 1623428543,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea7290bdf23_57695788 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<link rel="stylesheet" type="text/css" href="../../css/colores1.css">
	<!--<link rel="stylesheet" type="text/css" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
">-->

	<?php echo '<script'; ?>
 type="text/javascript">
		function refrescar() {
			var p = window.parent;
			p.location.href='../';
		}
	<?php echo '</script'; ?>
>

</head>
<body ONLOAD="self.setTimeout('refrescar()',2000);">
	<center>
		<h1 class="let"><?php echo $_smarty_tpl->tpl_vars['mensage']->value;?>
</h1>
		<br>
		<h1 class="let"><?php echo $_smarty_tpl->tpl_vars['mensage1']->value;?>
</h1>
	</center>
</body>
</html><?php }
}
