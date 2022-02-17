Proceso Ejercicio7
	
	Escribir "SECRETARIA DE SALUD";
	Definir persona Como Caracter;
	Definir imc, num Como Real;
	Dimension persona[2], num[2];
	capturar(persona);
	capturarNum(num);
	imc <- calculo(num);
	resultado(imc, persona);
FinProceso

SubProceso capturar(dato Por Referencia)
	dato[0] <- capturarDatos("Digite su Nombre y Apellido:");
	dato[1] <- capturarDatos("Digite numero de documento de identidad:");
FinSubProceso

SubProceso dato <- capturarDatos(mensaje)
	Definir dato Como Caracter;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso capturarNum(dato2 Por Referencia)
	dato2[0] <- capturarDatos2("Digite su peso en kilogramos?:");
	dato2[1] <- capturarDatos2("Digite su estatura en metros");
FinSubProceso

SubProceso dato2 <- capturarDatos2(mensaje2)
	Definir dato2 Como Real;
	Escribir mensaje2;
	Leer dato2;
FinSubProceso

SubProceso imc <- calculo(num)
	Definir imc Como Real;
	imc <- num[0]/(num[1] * num[1]);
FinSubProceso

SubProceso resultado(imc Por Referencia, persona)
		
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
	
	
FinSubProceso


