Proceso Ejercicio6
			
	Definir nombre,nombre2,nombre3, nombreliminar,nombrebuscar,nombre4,organizacion2,organizacion3, organizacion Como Caracter;
	definir telefono,opcion, telefono2,telefono3 Como Entero;
	
	opcion<-0;
	telefono<-0;
	telefono2<-0;
	telefono3<-0;
		
	Repetir
		
	Escribir "CONTACTOS TELEFONICOS";
	Escribir "1.Ingresar Contacto";
	Escribir "2.Buscar Contacto";
	Escribir "3.Eliminar Contacto";
	escribir "4.salir";
	leer opcion;
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
		Escribir "Ingresar Contacto";
		Escribir "Digite nombre completo";
		leer nombre;
		Escribir "Digite nombre organizacion";
		leer organizacion;
		Escribir "Digite Numero Telefono";
		leer telefono;
			
		Si (telefono==telefono2) Entonces;
			Escribir "el numero de telefono ya se encuentra en nuestra base de datos";
		SiNo
			Si (telefono==telefono3) Entonces;
				Escribir "el numero de telefono ya se encuentra en nuestra base de datos";
			
					SiNo
						Escribir "Contacto ingresado con exito";
					
				Finsi
				
			finSi
			Esperar 2 Segundos;
			Limpiar Pantalla;
			
		escribir "Digite nombre completo";
		leer nombre2;
		Escribir "Digite nombre organizacion";
		leer organizacion2;
		Escribir "Digite Numero Telefono";
		leer telefono2;
		
		
					Si (telefono2==telefono3) Entonces;
					Escribir "el numero de telefono ya se encuentra en nuestra base de datos";
				SiNo
					Si (telefono2==telefono) Entonces;
						Escribir "el numero de telefono ya se encuentra en nuestra base de datos intente nuevamente";
						
					SiNo
						Escribir "Contacto ingresado con exito";
						
					FinSi
				FinSi
				
			Esperar 2 Segundos;
		Limpiar Pantalla;
		escribir "Digite nombre completo";
		leer nombre3;
		Escribir "Digite nombre organizacion";
		leer organizacion3;
		Escribir "Digite Numero Telefono";
		leer telefono3;
		
		
				
		Si (telefono3==telefono2) Entonces;
			Escribir "el numero de telefono ya se encuentra en nuestra base de datos";
		SiNo
			Si (telefono3==telefono) Entonces;
				Escribir "el numero de telefono ya se encuentra en nuestra base de datos intente nuevamente";
			
		SiNo
			 Escribir "Contacto ingresado con exito";
					
			 FinSi
		 Finsi
		 Esperar 2 Segundos;
		 Limpiar Pantalla;
		 
		 2:
			 escribir "Buscar Contacto";
			 escribir "Digite nombre completo del contacto a buscar";
			 leer nombrebuscar;
			 
		 Si (nombrebuscar==nombre) Entonces;
			 Escribir "nombre ", nombre;
			 Escribir "organizacion ",organizacion;
			 Escribir "Telefono ",telefono;
			SiNo
			 Si (nombrebuscar==nombre2) Entonces;
				 Escribir "nombre ",nombre2;
				 Escribir "organizacion ",organizacion2;
				 Escribir "Telefono ",telefono2;
			 SiNo
				 Si (nombrebuscar==nombre3) Entonces;
					 Escribir "nombre ",nombre3;
					 Escribir "organizacion ",organizacion3;
					 Escribir "Telefono ",telefono3;
				 SiNo
					 si (organizacion=" ") o (organizacion2=" ") o (organizacion3=" ") Entonces;
						 Escribir "el contacto no se encuentra en la base de datos";
						 
					 FinSi
					 

					 Finsi
		 FinSi
	 FinSi
	 
		 Esperar 3 Segundos;
		 Limpiar Pantalla;
		 
	 3:
		 escribir "Eliminar Contacto";
		 escribir "Digite nombre completo del contacto a eliminar";
		 leer nombreliminar;
		 		 Si (nombreliminar==nombre) Entonces;
			 nombre<-" ";
			 organizacion<-" ";
			 telefono<-0;
		 SiNo
			 Si (nombreliminar==nombre2) Entonces;
				 nombre2<-" ";
				 organizacion2<-" ";
				 telefono2<-0; 
			 SiNo
				 Si (nombreliminar==nombre3) Entonces;
					 nombre3<-" ";
					 organizacion3<-" ";
					 telefono3<-0;
					 
					Escribir "el contacto ha sido eliminado con exito";
				 SiNo
					 Escribir "el contacto no se encuentra en la base de datos";
			 
		 FinSi
	 FinSi
	 
		 Finsi
		 
		 Esperar 2 Segundos;
		 Limpiar Pantalla;
		 		 
	 4:
		 Borrar Pantalla;
		 Escribir "Hasta Pronto";
	 De Otro Modo:
		 Escribir "opcion no valida";
		 Esperar 2 Segundos;
		 Limpiar Pantalla;
		 
		FinSegun	

	Hasta Que opcion= 4;
	
				
FinProceso
