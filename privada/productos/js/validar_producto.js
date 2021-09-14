"use strict"
function validar(){
	var id_proveedor = document.formu.id_proveedor.value;
	var producto = document.formu.producto.value;
	var caracteristica = document.formu.caracteristica.value;

	if (id_proveedor == "") {
		alert("seleccione un proveedor");
		document.fomu.id_proveedor.focus();
		return;
	}
	if (producto == "") {
		alert("ingrese el nombre del producto campo vacio");
		document.formu.producto.focus();
		return;
	}
	if (caracteristica == "") {
		alert("campo vacio ingrese caracteristica del producto");
		document.formu.caracteristica.focus();
		return;
	}
	document.formu.submit();
}