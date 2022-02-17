Proceso miFuncion
	Definir persona Como Caracter;
	Dimension persona[1];
	
	persona[0] <- capturarDato("Digite su edad");
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
	Si ConvertirANumero(datos[0]) >= 18 Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Escribir "Usted no es mayor de edad";
	FinSi
	
FinSubProceso




