<?php
/* Smarty version 3.1.36, created on 2021-09-12 21:23:24
  from 'C:\wamp64\www\sis_compania_1\privada\empleados\templates\empleados.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_613ea80ce091e6_44526890',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6a332065ec45a4e028e273a8e3c2b20249213a23' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_compania_1\\privada\\empleados\\templates\\empleados.tpl',
      1 => 1623650060,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_613ea80ce091e6_44526890 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
   <div class="titulo_listado">
   	<h1>EMPLEADOS</h1>
   </div>
   <div class="titulo_nuevo">
   	<form name="formNuevo" method="post" action="empleado_nuevo.php">
   		<a href="javascript:document.formNuevo.submit();">Nuevo>>> </a>
   	</form>
   </div>

  <center>
  	<table class="listado">
  		<tr>
  			<th>NRO</th><th>ID_COMPAÑIA</th><th>CI</th><th>NOMBRES Y APELLIDOS</th><th>FECHA_NACIMIENTO</th><th>DIRECCION</th><th>PROFESION</th>
        <th><img src="../../img/modificar.png"></th><th><img src="../../img/borrar.png"></th>
  		</tr>
  		<?php $_smarty_tpl->_assignInScope('b', "1");?>
  		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empleados']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
  		<tr>
  			<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['id_compania_limpieza'];?>
</td>
  			<td><?php echo $_smarty_tpl->tpl_vars['r']->value['ci'];?>
</td>
  			<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['apellidos'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['fec_nac'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['direccion'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['profesion'];?>
</td>
  			<td align="center">
  				<form name="formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
" method="post" action="empleado_modificar.php">
  					<input type="hidden" name="id_empleado" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
">
  					<!--<input type="hidden" name="id_compania_limpieza" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_compania_limpieza'];?>
">-->
  					<a href="javascript:document.formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
.submit();" title="Modificar Empleado">
  						Modificar>>
  					</a>
  				</form>
  			</td>
  			<td>
  				<form name="formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
" method="post" action="empleado_eliminar.php">
  					<input type="hidden" name="id_empleado" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
">
  					<a href="javascript:document.formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empleado'];?>
.submit();" title="Eliminar Empleado" onclick='javascript:return(confirm(" Desea realmente Eliminar al empleado:::<?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
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
