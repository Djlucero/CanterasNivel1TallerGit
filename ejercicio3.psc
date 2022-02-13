Proceso Ejercicio3
	Definir num, espacios,espacios2, i Como Entero;
	Definir asterisco,tab Como Caracter;
	num<-0;
	asterisco<-"*";
	espacios<-21;
	espacios2<-1;
	tab<-" ";
	Escribir "                       *";
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Mientras num<=i Hacer
			asterisco<- Concatenar(asterisco,"*");
			num<- num+1;
		FinMientras
		Mientras espacios2<=espacios Hacer
			tab<-Concatenar(tab," ");
			espacios2<-espacios2+1;
			
		FinMientras
		Escribir tab, asterisco;
		num<-num-1;
		espacios<-espacios-1;
		espacios2<-1;
		tab<-" ";
	FinPara
	Escribir "                       ***";
	Escribir "                       ***";
	Escribir "                      *****";
	Escribir "                     *******";
FinProceso
