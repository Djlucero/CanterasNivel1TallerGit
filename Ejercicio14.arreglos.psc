Proceso Ejercicio1
	
	Definir num Como Entero;
	Dimension num[5];
	
	impresionumero(num);
			
FinProceso


	
	SubProceso impresionumero(num)
		definir i Como Entero;
		para i<- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "Digite numero";
			leer num[i];
		FinPara
		Limpiar Pantalla;
		para i<-0 Hasta 4 Con Paso 1 hacer
			Escribir "[",i,"]","=",num[i];
		FinPara
		FinSubProceso
		