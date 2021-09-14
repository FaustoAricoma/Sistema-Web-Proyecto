<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:20:48
  from 'C:\wamp64\www\sis_compania_1\privada\empleado_salarios\templates\empleado_salarios.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea770658a26_58002803',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c4e7d425c83e341b33dd06dad62064e5965b122f' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\empleado_salarios\\templates\\empleado_salarios.tpl',
      1 => 1623026809,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea770658a26_58002803 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
   <div class="titulo_listado">
   	<h1>SALARIOS DE EMPLEADOS</h1>
   </div>
   <div class="titulo_nuevo">
   	<form name="formNuevo" method="post" action="empleado_salario_nuevo.php">
   		<a href="javascript:document.formNuevo.submit();">Nuevo>>> </a>
   	</form>
   </div>

  <center>
  	<table class="listado">
  		<tr>
  			<th>NRO</th><th>EMPLEADO</th><th>CEDULA <br> IDENTIDAD</th><th>SALARIO <br> Bs </th><th>FECHA <br> DE PAGO</th>
        <th><img src="../../img/modificar.png"></th><th><img src="../../img/borrar.png"></th>
  		</tr>
  		<?php $_smarty_tpl->_assignInScope('b', "1");?>
  		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empleado_salarios']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
  		<tr>
  			<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
  			<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['apellidos'];?>
</td>
  			<td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['ci'];?>
</td>
  			<td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['salario'];?>
</td>
        <td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['fecha_salario'];?>
</td>
  			<td align="center">
  				<form name="formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
" method="post" action="empleado_salario_modificar.php">
  					<input type="hidden" name="id_empleado_salario" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
">
  					<input type="hidden" name="id_empleado" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
">
  					<a href="javascript:document.formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
.submit();" title="Modificar salario de empleado">
  						Modificar>>
  					</a>
  				</form>
  			</td>
  			<td>
  				<form name="formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
" method="post" action="empleado_salario_eliminar.php">
  					<input type="hidden" name="id_empleado_salario" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
">
  					<a href="javascript:document.formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado_salario'];?>
.submit();" title="Eliminar Empleado salario" onclick='javascript:return(confirm(" Desea realmente Eliminar al empleado_salario:::<?php echo $_smarty_tpl->tpl_vars['r']->value['usuario'];?>
?"));'>
  						Eliminar
  					</a>
  				</form>
  			</td>
  			<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
  			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
  		</tr>
  	</table>
  </center>
</body>
</html><?php }
}
