Proceso ejercicio8
	
	Definir nombre,obs,prueba Como Caracter;
	definir resultado,opcion,i,p,pr Como Entero;
	Definir puntaje Como Real;
	
	nombre<-" "; 
	prueba<-" ";
	puntaje<-0;
	obs<-" ";
	p<-0;
	pr<-0;

	

	Repetir
		Escribir '*** ESCUELA AUTOMOVILISTICA EL MAESTRO ***';
		Escribir '(1) Registro de Usuarios al curso';
		Escribir '(2) Consultar Usuarios y Resultados";
		Escribir '(3) salir';
		leer opcion;
		Limpiar Pantalla;
		
		
		Segun opcion Hacer
			1:
				Para i<-0 Hasta 7 Con Paso 1 Hacer
					
					
				Escribir '**** Registro Curso ****';
				Escribir 'Digite nombre y apellido del alumno',i+1;
				leer nombre;
				Escribir "el alumno presento prueba escriba (si o no)";
				leer prueba;
				Escribir "digite puntaje obtenido en la prueba (1 a 5)";
				leer puntaje;
				Esperar 2 Segundos;
				Limpiar Pantalla;
				
			FinPara

		
			2:
				Escribir '*** Consultar Usuarios ***';
				Escribir 'Digite nombre a consultar';
				leer nombre;
				si (nombre==nombre) Entonces
					Escribir "El ", nombre, prueba," presento la pueba con un puntaje de ",puntaje;
					si puntaje>=3.5 Entonces
						Escribir "prueba aprobada";
					SiNo
						Escribir "prueba no aprobada";
					FinSi
				FinSi
						
				
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