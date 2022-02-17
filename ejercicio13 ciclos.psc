Proceso ejercicio8
	
	Definir contactos, nombre Como Caracter;
	Dimension contactos[8,8];	
	Definir opcion, nregistros Como Entero;
	opcion <- 0;	
	inicializandoRegistros(contactos);
	Repetir
		opcion <- menu();	
		Segun opcion Hacer
			1:
				Limpiar Pantalla;
				Escribir '**** Registro Curso ****';;
				LlenarRegistros(contactos);
			2:
				Limpiar Pantalla;
				Escribir '*** Consultar Usuarios ***';
				BuscarContacto(contactos);
			
				Escribir "Hasta luego";
			De Otro Modo:
				Escribir "La opcion elegida no es valida ";
		FinSegun
	Hasta Que opcion = 3
	
	
FinProceso
	


SubProceso datos <- solicitarDatos(mensaje)
	Definir datos Como Caracter;
	Escribir mensaje, Sin Saltar;
	Leer datos;
FinSubProceso
SubProceso opcion <- menu()
	Definir opcion Como Entero;
	Escribir '*** ESCUELA AUTOMOVILISTICA EL MAESTRO ***';
	Escribir '(1) Registro de Usuarios al curso';
	Escribir '(2) Consultar Usuarios y Resultados";
	Escribir '(3) salir';
	Leer opcion;
FinSubProceso

SubProceso inicializandoRegistros(contactos Por Referencia)
	Definir i, j Como Entero;
	Para i<- 0 Hasta 7 Con Paso 1 Hacer
		Para j<- 0 Hasta 7 Con Paso 1 Hacer
			contactos[i,j] <- "";
		FinPara
	FinPara
FinSubProceso

SubProceso LlenarRegistros(contactos Por Referencia)
	Definir i, j, contador  Como Entero;
	Definir existe Como Logico;
	Definir nombreCompleto, prueba, puntaje,  numcontacto, resp Como Caracter;
	i <- 0;
	contador <-1;
	Repetir
		numcontacto <- ConvertirATexto(i+1);
		nombreCompleto <- solicitarDatos(Concatenar(Concatenar("Digite nombre y apellido del alumno ", numcontacto), " a registrar: "));
		contactos[i,0] <- nombreCompleto;
		prueba <- solicitarDatos(Concatenar(Concatenar("Digite (presento) o (no presento) para la prueba ", numcontacto), " a registrar: "));
		contactos[i,1]<- prueba;
		puntaje <- solicitarDatos(Concatenar(Concatenar("digite puntaje obtenido en la prueba de (1 a 5)  ", numcontacto), " a registrar: "));
		Para j<- 1 Hasta 1 Con Paso 1 Hacer
			Si ConvertirANumero( puntaje) >=3.5 Entonces
					Escribir "Prueba aprobada";
					SiNo
						Escribir "Prueba No aprobada";
					FinSi
		
		FinPara
		
		contactos[i,2] <- puntaje;	
		
		resp <- solicitarDatos("Desea registrar otro contacto? escriba s para su y n para no ");
		Si i >= 8 y resp ="s" Entonces			
			Escribir "El curso ya tiene el cupo completo";
		FinSi
		si resp="n" Entonces
			i<-8;
		FinSi		
		i <- i+1;
	Hasta Que i>7
FinSubProceso

SubProceso BuscarContacto(contactos)
	Definir nombre Como Caracter;
	Definir  i, j Como Entero;
	Definir existe Como Logico;
	existe <- Falso;
	nombre <- solicitarDatos("Digite el nombre del contacto a buscar: ");
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		para j<-0 Hasta 7 Con Paso 1 Hacer
			si nombre = contactos[i,0] Entonces
				Escribir contactos[i,j] ;
				existe <- Verdadero;
				FinSi
			FinPara
			
		FinPara;
	Si existe= Falso Entonces
		Escribir "Este contacto no se encuentra registrado ";
				
	FinSi
FinSubProceso


				
			
			


	

	