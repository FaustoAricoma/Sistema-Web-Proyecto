"use strict"
function validar(){
	var id_empleado = document.formu.id_empleado.value;
	var salario = document.formu.salario.value;

	if (id_empleado == "") {
		alert("seleccione un empleado");
		document.fomu.id_empleado.focus();
		return;
	}
	
	if ((!v22.test(salario)) || (salario == "")) {
		alert("El campo esta vacio o salario  es incorrecto");
		
		return;
	}
	document.formu.submit();
}