<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:23:01
  from 'C:\wamp64\www\sis_compania_1\privada\empleado_salarios\templates\empleado_salario_modificar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea7f525d8b1_71140340',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '297442d74a79a6329b8552a5bb1f66791df08aae' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\empleado_salarios\\templates\\empleado_salario_modificar.tpl',
      1 => 1623034062,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea7f525d8b1_71140340 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<link rel="stylesheet" type="text/css" href="../calendario/tcal.css">
	<?php echo '<script'; ?>
 type="text/javascript" src="../js/expresiones_regulares.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="js/empleado_salario.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="../calendario/tcal.js"><?php echo '</script'; ?>
>
    <meta charset="utf-8">

</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="empleado_salario_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR SALARIO DE EMPLEADO</h2>
			 <b>Empleado</b>
			  <select name="id_empleado">
			    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empleado']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			  	  <option value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
"><?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
-<?php echo $_smarty_tpl->tpl_vars['r']->value['apellidos'];?>
-<?php echo $_smarty_tpl->tpl_vars['r']->value['ci'];?>
</option>
			  	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			  	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empleados']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			  	  <option value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
"><?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
-<?php echo $_smarty_tpl->tpl_vars['r']->value['apellidos'];?>
-<?php echo $_smarty_tpl->tpl_vars['r']->value['ci'];?>
</option>
			  	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			  </select>(*)
		 <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empleado_salario']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
		
		 <p>
		 	<b>Salario :</b> <input type="text" name="salario" size="15" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['salario'];?>
">(*)
		 </p>
		 <p>
		 	<b>Fecha Pago :</b> <input type="text" name="fecha_salario" class="tcal" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['fecha_salario'];?>
" / size="10">
		 </p>
		 <p>
		 	<input type="hidden" name="accion" value="">
		 	<input type="hidden" name="id_empleado_salario" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
">
		 	<input type="button" value="Aceptar" onclick="validar();" class="boton2">
		 	<input type="button" value="Cancelar" onclick="javascript:location.href='empleado_salarios.php';" class="boton2">
		 </p>
		  <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		 <p><b>(*) Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html><?php }
}
