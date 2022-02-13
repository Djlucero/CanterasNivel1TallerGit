Proceso Ejercicio9
	
	
	definir  opcion Como Entero;;
	Definir largo, Ancho, base, altura,base2,alto, triangulo, rectangulo,trapecio Como Real;;
	
	Escribir "BIENVENIDOS A SU CLASE DE GEOMETRIA";
	Repetir

	Escribir "Seleccione la opcion de la figura a calcular";
	Escribir "1.Rectangulo";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";
	Escribir "4. Salir";
		
	leer opcion;
	

	Segun opcion Hacer
		1:
			Escribir "Usted ha elegido Rectangulo";
			Escribir "Digite largo de la figura";
			leer largo;
			Escribir "Digite Ancho de la figura";
			leer Ancho;
			rectangulo<-largo*ancho;	
			Escribir "el area del rectangulo es  ", rectangulo;
		2:
			Escribir "Usted ha elegido Triangulo";
			Escribir "Digite base de la figura";
			leer base;
			Escribir "Digite altura de la figura";
			leer altura;
			triangulo<-(base*altura)/2;	
			Escribir "el area del triangulo es  ", triangulo;
			
			
		3: 
			Escribir "Usted ha elegido Trapecio";
			Escribir "Digite base de la figura";
			leer base;
			Escribir "Digite base2 de la figura";
			leer base2;
			Escribir "Digite alto de la figura";
			leer alto;
			trapecio<-(base*base2)/2*alto;	
			Escribir "el area del trapecio es  ", trapecio;
					
	FinSegun
	
Hasta Que opcion==4

FinProceso
