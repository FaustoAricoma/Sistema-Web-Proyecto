"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var direccion = document.formu.direccion.value;
	var telefono = document.formu.telefono.value;
	
	
	if ((nombre == "")){
		alert("Ingrese nombre el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}

	if ((!v22.test(telefono)) || (telefono == "")) {
		alert("Telefono incorecto o el campo esta vacio");
		document.fomu.cantidad.focus();
		return;
	}

	if (direccion == "") {
		alert("Ingrese direccion o campo esta vacio");
		return;
	}
	
	document.formu.submit();
} 