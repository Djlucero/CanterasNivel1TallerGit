Proceso ejercicio6 
	
	Definir contactos, nombre Como Caracter;
	Dimension contactos[3,3];	
	Definir opcion, nregistros Como Entero;
	opcion <- 0;	
	inicializandoRegistros(contactos);
	Repetir
		opcion <- menu();	
		Segun opcion Hacer
			1:
				Limpiar Pantalla;
				Escribir "Ingresar Contacto";
				LlenarRegistros(contactos);
			2:
				Limpiar Pantalla;
				escribir "Buscar Contacto";
				BuscarContacto(contactos);
			3:
				Limpiar Pantalla;
				escribir "Eliminar Contacto";
				EliminarContacto(contactos);
			4: 
				Escribir "Hasta Pronto";
			De Otro Modo:
				Escribir "La opcion elegida no es valida";
		FinSegun
	Hasta Que opcion = 5
	
	
FinProceso

SubProceso datos <- solicitarDatos(mensaje)
	Definir datos Como Caracter;
	Escribir mensaje, Sin Saltar;
	Leer datos;
FinSubProceso
SubProceso opcion <- menu()
	Definir opcion Como Entero;
	Escribir "CONTACTOS TELEFONICOS";
	Escribir "1.Ingresar Contacto";
	Escribir "2.Buscar Contacto";
	Escribir "3.Eliminar Contacto";
	escribir "4.salir"; 
	Leer opcion;
FinSubProceso
SubProceso inicializandoRegistros(contactos Por Referencia)
	Definir i, j Como Entero;
	Para i<- 0 Hasta 2 Con Paso 1 Hacer
		Para j<- 0 Hasta 2 Con Paso 1 Hacer
			contactos[i,j] <- "";
		FinPara
	FinPara
FinSubProceso

SubProceso LlenarRegistros(contactos Por Referencia)
	Definir i, j, contador  Como Entero;
	Definir existe Como Logico;
	Definir nombreCompleto, telefono, orgaizacion, numcontacto, resp Como Caracter;
	i <- 0;
	contador <-1;
	Repetir
		numcontacto <- ConvertirATexto(i+1);
		nombreCompleto <- solicitarDatos(Concatenar(Concatenar("Digite nombre completo ", numcontacto), " a registrar: "));
		contactos[i,0] <- nombreCompleto;
		telefono <- solicitarDatos(Concatenar(Concatenar("Digite Numero Telefono", numcontacto), " a registrar: "));
		Para j<- 0 Hasta 2 Con Paso 1 Hacer
			Si telefono = contactos[j,1] Entonces
				existe <- Verdadero;
				Repetir
					Escribir "el numero de telefono ya se encuentra en nuestra base de datos";
					telefono <- solicitarDatos(Concatenar(Concatenar("Digite Numero Telefono ", numcontacto), " a registrar: "));
					Si telefono = contactos[j,1] Entonces
						existe <- Verdadero;
					SiNo
						existe <- Falso;
					FinSi
				Hasta Que existe = Falso;					
			FinSi
		FinPara
		contactos[i,1]<- telefono;
		orgaizacion <- solicitarDatos(Concatenar(Concatenar("Digite nombre organizacion ", numcontacto), " a registrar: "));
		contactos[i,2] <- orgaizacion;	
		Escribir "Contacto ingresado con exito";
		resp <- solicitarDatos("Desea registrar otro contacto? escriba v para si y f para no");
		Si i >= 2 y resp ="v" Entonces			
			Escribir "Directorio Telefonico lleno";
		FinSi
		si resp="f" Entonces
			i<-3;
		FinSi		
		i <- i+1;
	Hasta Que i>2
	
FinSubProceso
SubProceso BuscarContacto(contactos)
	Definir nombre Como Caracter;
	Definir  i, j Como Entero;
	Definir existe Como Logico;
	existe <- Falso;
	nombre <- solicitarDatos("Digite nombre completo del contacto a buscar: ");
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 Hasta 2 Con Paso 1 Hacer
			si nombre = contactos[i,0] Entonces
				Escribir contactos[i,j] ;
				existe <- Verdadero;
			FinSi
		FinPara
	FinPara;
	Si existe= Falso Entonces
		Escribir "el contacto no se encuentra en la base de datos ";
	FinSi	
FinSubProceso


SubProceso EliminarContacto(contactos)
	Definir nombre Como Caracter;
	Definir  i, j Como Entero;
	Definir eliminado Como Logico;
	eliminado <- Falso;
	nombre <- solicitarDatos("Digite nombre completo del contacto a eliminar: ");
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 Hasta 2 Con Paso 1 Hacer
			si nombre = contactos[i,0] Entonces
				contactos[i,0] <- "";
				contactos[i,1] <- "" ;
				contactos[i,2] <- "" ;
				eliminado <- Verdadero;
			FinSi
		FinPara
	FinPara;
	Si eliminado = Falso Entonces
		Escribir "El contacto no se encuentra en la base de datos";
	SiNo
		Escribir "El contacto ha sido eliminado con exito ";
	FinSi
FinSubProceso