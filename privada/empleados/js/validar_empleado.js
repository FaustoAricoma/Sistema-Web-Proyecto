"use strict"
function validar(){
	var ci = document.formu.ci.value;
	var nombres = document.formu.nombres.value;
	var apellidos = document.formu.apellidos.value;
	var fec_nac = document.formu.fec_nac.value;
	var direccion = document.formu.direccion.value;
	var profesion = document.formu.profesion.value;

	if (ci== ""){
		alert("Por favor ingrese el numero de ci");
		document.formu.ci.focus();
		return;
	}
	if ((!v1.test(nombres)) || (nombres == "")){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombres.focus();
		return;
	}

	if ((!v1.test(apellidos)) || (apellidos == "")) {
		alert("Por favor introduzca un Apellido");
		document.fomu.apellidos.focus();
		return;
	}
	if (fec_nac== ""){
		alert("Por favor ingrese el fecha de nacimiento");
		document.formu.fec_nac.focus();
		return;
	}

	if (direccion== ""){
		alert("Por favor ingrese la direccion");
		document.formu.direccion.focus();
		return;
	}
		if ((!v1.test(profesion)) || (profesion == "")){
		alert("Profesion incorecto o el campo esta vacio");
		document.formu.profesion.focus();
		return;
	}
	
	document.formu.submit();
} 