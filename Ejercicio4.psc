Proceso Ejercicio4
	
	Definir nombre Como Caracter;
	definir opcion Como Entero;;
	Definir pelicula Como Caracter;
	Definir comentarios Como Logico;
	definir novedad Como Caracter;
	
	
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
			Escribir "Digite pelicula a consultar";
			leer pelicula;
		2:
			Escribir " Peliculas Disponibles";
			Escribir " la Vida es Bella, Atrapame si puedes";
			Escribir " Encanto, Sing 2, Spaider-Man, Scream, Amenaza bajo el agua";
			Escribir " Matrix, kings-Man";
		3:
			Escribir " Recibir Peliculas y Comentarios";
			Escribir " Pelicula a Devolver";
			leer pelicula;
			Escribir " Desea añadir un comentario? (digite V o F)";
 			Leer comentarios;
			Si comentarios= Verdadero Entonces
				Escribir "Digite Comentarios y Observaciones";
				leer novedad;
				Limpiar Pantalla;
				Escribir "la pelicula ", pelicula," presenta los siguientes daños y novedades ", novedad;
									
					
				FinSi
	FinSegun
	
	
	
FinProceso
