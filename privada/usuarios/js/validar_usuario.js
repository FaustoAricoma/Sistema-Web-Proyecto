"use strict"
function validar(){
	var id_persona = document.formu.id_persona.value;
	var usuarioo = document.formu.usuarioo.value;
	var clave = document.formu.clave.value;

	if (id_persona == "") {
		alert("Por favor seleccione una persona");
		document.fomu.id_persona.focus();
		return;
	}
	if (usuarioo == "") {
		alert("Por favor ingrese al usuario");
		document.formu.usuarioo.focus();
		return;
	}
	if (clave == "") {
		alert("Por favor ingrese clave");
		document.formu.clave.focus();
		return;
	}
	document.formu.submit();
}