Proceso Ejercicio3
	
	Definir i,num,contador Como Entero;
	
	
		para num<- 1 Hasta 1000 Hacer
			i<-1;
			contador<-0;
			Mientras i<=num Hacer
				si num mod i == 0 Entonces
					contador<-contador+1;
				FinSi
				i<-i+1;
			FinMientras
			si contador==2 Entonces
				Escribir "el numero ",num, " es primo";
			FinSi
		FinPara 
		
	
	FinProceso
