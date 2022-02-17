Proceso Ejercicio3
	
	Definir persona Como Caracter;
	Dimension persona[3];
	
	persona[0] <- capturarDato("Digite su Nombre");
	persona[1] <- capturarDato("Digite su Apellido");
	persona[2] <- capturarDato("Digite su Edad");
	
	imprimirpersona(persona);
FinProceso

SubProceso dato <- capturarDato(mensaje)
	Definir dato Como Caracter;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso imprimirpersona(datos)
	Limpiar Pantalla;
	Escribir datos[0];
	Si ConvertirANumero(datos[2]) >= 18 Entonces
		Escribir "Usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir "Usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
FinSubProceso

	
	
