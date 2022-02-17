SubProceso llenarpelicula(pelicula)
	definir i Como Entero;
	para i<-0 hasta 8 Con Paso 1 Hacer
		Escribir "Digite pelicula a consultar";
		Leer pelicula[i];
		si pelicula[i]==pelicula[] Entonces
			Escribir "usted a alquilado la pelicula ",pelicula[i];
		sino 
			Escribir "la pelicula no se encuentra disponible";
		FinSi
	FinPara
FinSubProceso

SubProceso listarpeliculas(peliculas)
	Definir i Como Entero;
	para i<-0 hasta 8 Con Paso 1 Hacer
		Escribir peliculas[i];
	FinPara
	
FinSubProceso

SubProceso devolucionpelicula(peliculas,novedad)
	Escribir " Digite Pelicula a Devolver";
	leer peliculas[];
	escribir "la pelicula ha sido ingresada con exito";
	Escribir "Digite Comentarios y Observaciones";
	leer novedad;
	Limpiar Pantalla;
	Escribir "la pelicula presenta las siguientes novedades ", novedad;
	
FinSubProceso

Proceso Ejercicio4
	
	Definir nombre, peliculas, novedad,comentario Como Caracter;
	definir opcion Como Entero;;
	Definir observacion Como Logico;
	Dimension peliculas[9];
	
	novedad<- " ";
	
	peliculas[0] <- "1. La Vida es Bella";
	peliculas[1] <- "2. Atrapame si puedes";
	peliculas[2] <- "3. Encanto";
	peliculas[3] <- "4. Sing 2";
	peliculas[4] <- "5. Spaider-Man";
	peliculas[5] <- "6. Scream";
	peliculas[6] <- "7. Amenaza bajo el agua";
	peliculas[7] <- "8. Matrix";
	peliculas[8] <- "9. kings-Man";
	
	
	Escribir "VIDEOTIENDA EL PORVENIR";
	
	Escribir "Digite nombre y apellido";
	leer nombre;

	Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1.Alquilar Pelicula";
	Escribir "2. Consultar peliculas disponibles ";
	Escribir "3. Recibir pelicula y comentarios";
	leer opcion;
	
	Segun opcion Hacer
		1:
			llenarpelicula(peliculas);
		2:
			Escribir "Peliculas Disponibles";
			listarpeliculas(peliculas);
		3:
			Escribir " Recibir Peliculas y Comentarios";
			devolucionpelicula(peliculas,novedad);	
			
			
			esperar 2 Segundos;
			Limpiar Pantalla;	
	FinSegun
	

	
	
FinProceso
