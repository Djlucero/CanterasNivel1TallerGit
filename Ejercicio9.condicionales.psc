Proceso Ejercicio9
	
	
	Definir opcion Como Entero;
	
	Escribir "BIENVENIDOS A SU CLASE DE GEOMETRIA";
	
	Escribir "Seleccione la opcion de la figura a calcular";
	Escribir "1.Rectangulo";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";
	Escribir "4. Salir";
		
	leer opcion;
	Segun opcion Hacer
		1:
			Definir num, area Como Real;
			Dimension num[2];
			capturar(num);
			area <- calculoRectangulo(num);
			respRectangulo(area);
		2:
			Definir num, area Como Real;
			Dimension num[2];
			capturar(num);
			area <- calculoTriangulo(num);
			respTriangulo(area);		
		3:
			Definir num, area Como Real;
			Dimension num[3];
			capturar2(num);
			area <- calculoTrapecio(num);
			respTrapecio(area);				
		4:
			Escribir "¡Hasta la próxima!";
			
		De Otro Modo:
			Escribir "La opción no es valida";
	FinSegun
	
FinProceso


SubProceso capturar(dato Por Referencia)
	dato[0] <- capturarDatos("Digite base en cm:");
	dato[1] <- capturarDatos("Digite altura en cm:");
FinSubProceso

SubProceso capturar2(dato Por Referencia)
	dato[0] <- capturarDatos("Digite base mayor en cm:");
	dato[1] <- capturarDatos("Digite base menor en cm:");
	dato[2] <- capturarDatos("Digite altura en cm:");
FinSubProceso

SubProceso dato <- capturarDatos(mensaje)
	Definir dato Como Real;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso area <- calculoRectangulo(num)
	Definir area Como Real;
	area <- num[0] * num[1];
FinSubProceso

SubProceso respRectangulo(area Por Referencia)
	Escribir "Area del rectángulo = ", area, " cm^2";
FinSubProceso

SubProceso area <- calculoTriangulo(num)
	Definir area Como Real;
	area <- (num[0] * num[1])/2;
FinSubProceso

SubProceso respTriangulo(area Por Referencia)
	Escribir "Area del Tríangulo = ", area, " cm^2";
FinSubProceso

SubProceso area <- calculoTrapecio(num)
	Definir area Como Real;
	area <- (num[2] * (num[0] * num[1]))/2;
FinSubProceso

SubProceso respTrapecio(area Por Referencia)
	Escribir "Area del Trapecio = ", area, " cm^2";
FinSubProceso