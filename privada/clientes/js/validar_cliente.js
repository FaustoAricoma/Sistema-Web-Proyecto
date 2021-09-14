"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var direccion = document.formu.direccion.value;
	var telefono = document.formu.telefono.value;
	

	if ((!v1.test(nombre)) || (nombre == "")){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}

	if (direccion==""){
 		alert("campo esta vacio ingrese direccion");
		document.fomu.direccion.focus();
		return;
	}

	if ((!v22.test(telefono)) || (telefono == "")) {
		alert("El campo esta vacio o telefono  es incorrecto");
		return;
	}
	
	document.formu.submit();
} 