Proceso Ejercicio7
	
	Definir  nombre, documento Como Caracter;
	Definir  peso Como Entero;
	Definir estatura, imc Como Real;
	
	
	Escribir "SECRETARIA DE SALUD";
	Escribir "Digite su Nombre y Apellido";
	leer nombre;
	Escribir "digite numero de documento de identidad";
	leer documento;
	Escribir "Digite su peso en kilogramos?";
	leer peso;
	Escribir "Digite su estatura en metros	";
	leer  estatura;
	
	imc<- peso/(estatura*estatura);
	
	Escribir  "señor(a)", nombre," su indice de masa corporal IMC es de: ", imc;
	
	Si (imc<18.5) Entonces;
		Escribir "Bajo de Peso";
	SiNo
		Si (imc >= 18.5 y imc <= 24.9) Entonces
			Escribir "Peso Normal";
			
		SiNo
			Si (imc >=25.0 y imc <= 29.9) Entonces
				Escribir "Preobecidad o Sobrepeso";	
			SiNo
				Si (imc >= 30.0 y imc <= 34.9) Entonces
					Escribir "Obecidad Clase I";
				SiNo
					Si (imc >= 35.0 y imc <=39.9) Entonces
						Escribir "Obecidad clase II";
					SiNo
						Si (imc >=40) Entonces
							Escribir "Obecidad clase III";
						FinSi
					FinSi
				FinSi
			FinSi
					
		FinSi
	FinSi
	
	
	
	
	
FinProceso
