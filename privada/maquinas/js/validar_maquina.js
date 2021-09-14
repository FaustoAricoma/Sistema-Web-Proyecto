"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var tipo = document.formu.tipo.value;
	
	

	if (nombre == ""){
		alert("campo esta vacio ingrese nombre de maquina");
		document.formu.nombre.focus();
		return;
	}

	if (tipo ==""){
 		alert("campo esta vacio ingrese tipo de uso");
		document.formu.tipo.focus();
		return;
	}
	
	document.formu.submit();
} 