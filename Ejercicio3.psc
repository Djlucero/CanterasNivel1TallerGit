Proceso Ejercicio3
	
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir edad Como Entero;
	Definir estado Como Logico;
	
	Escribir "Digite su Nombre";
	leer nombre;
	Escribir "Digite su Apellido";
	leer apellido;
	Escribir "Digite su edad";
	leer edad;
	
	si edad >=18 Entonces;
		Escribir nombre, " Usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
		
	SiNo
		Escribir nombre," usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
			
	FinSi
	
FinProceso
