Proceso ejercicio7ciclos
	
	Definir contactos, nombre Como Caracter;
	Dimension contactos[5,5];	
	Definir opcion, nregistros Como Entero;
	opcion <- 0;	
	inicializandoRegistros(contactos);
	Repetir
		opcion <- menu();	
		Segun opcion Hacer
			1:
				
				LlenarRegistros(contactos);
				Esperar 2 Segundos;
				Limpiar Pantalla;
			2:
				EliminarContacto(contactos);
				Esperar 2 Segundos;
				Limpiar Pantalla;
			3:
				BuscarContacto(contactos);
				Esperar 2 Segundos;
				Limpiar Pantalla;								
			4: 
				Escribir "Hasta Pronto";
			De Otro Modo:
				Escribir "La Opcion Elegida No Es Valida ";
		FinSegun
	Hasta Que opcion = 4
	
	
FinProceso
	
	

SubProceso datos <- solicitarDatos(mensaje)
	Definir datos Como Caracter;
	Escribir mensaje, Sin Saltar;
	Leer datos;
FinSubProceso

SubProceso opcion <- menu()
	Definir opcion Como Entero;
	Escribir 'PARQUEADERO EL GUARDIAN';
	Escribir '(1) Ingreso de Vehiculos';
	Escribir '(2) Salida de Vehiculos";
	Escribir '(3) Consultar';
	Escribir '(4) salir';
	Leer opcion;
FinSubProceso

SubProceso inicializandoRegistros(contactos Por Referencia)
	Definir i, j Como Entero;
	Para i<- 0 Hasta 4 Con Paso 1 Hacer
		Para j<- 0 Hasta 4 Con Paso 1 Hacer
			contactos[i,j] <- "";
		FinPara
	FinPara
FinSubProceso

SubProceso LlenarRegistros(contactos Por Referencia)
	Definir i, j, contador  Como Entero;
	Definir existe Como Logico;
	Definir nombreCompleto, telefono, placa, marca, numcontacto, resp Como Caracter;
	i <- 0;
	contador <-1;
	Repetir
		numcontacto <- ConvertirATexto(i+1);
		nombreCompleto <- solicitarDatos(Concatenar(Concatenar("Digite nombre y apellido de usuario ", numcontacto), " a registrar: "));
		contactos[i,0] <- nombreCompleto;
		telefono <- solicitarDatos(Concatenar(Concatenar("Digite numero de telefono", numcontacto), " a registrar: "));
		contactos[i,1]<- telefono;
		placa <- solicitarDatos(Concatenar(Concatenar("Digite placa del vehiculo", numcontacto), " a registrar: "));
		contactos[i,2] <- placa;
		marca <- solicitarDatos(Concatenar(Concatenar("Digite marca del vehiculo ", numcontacto), " a registrar: "));
		contactos[i,3] <- marca;		
		resp <- solicitarDatos("Desea registrar otro vehiculo? escriba s para su y n para no ");
		Si i >= 2 y resp ="s" Entonces			
			Escribir "Parqueadero Lleno";
		FinSi
		si resp="n" Entonces
			i<-3;
		FinSi		
		i <- i+1;
	Hasta Que i>2
FinSubProceso

SubProceso EliminarContacto(contactos)
	Definir placa Como Caracter;
	Definir  i, j Como Entero;
	Definir eliminado Como Logico;
	eliminado <- Falso;
	placa <- solicitarDatos("Digite numero de Placa del vehiculo: ");
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		para j<-0 Hasta 4 Con Paso 1 Hacer
			si placa = contactos[i,2] Entonces
				contactos[i,0] <- "";
				contactos[i,1] <- "" ;
				contactos[i,2] <- "" ;
				contactos[i,3] <- "" ;
				contactos[i,4] <- "" ;
				eliminado <- Verdadero;
			FinSi
		FinPara
	FinPara;
	Si eliminado = Falso Entonces
		Escribir "El vehiculo no se encuentra en la base de datos ";
	SiNo
		Escribir "El vehiculo ha salido con exito";
	FinSi
FinSubProceso

SubProceso BuscarContacto(contactos)
	Definir placa Como Caracter;
	Definir  i, j Como Entero;
	Definir existe Como Logico;
	existe <- Falso;
	placa <- solicitarDatos("Digite el placa del vehiculo a buscar: ");
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 Hasta 2 Con Paso 1 Hacer
			si placa = contactos[i,2] Entonces
				Escribir contactos[i,j] ;
				existe <- Verdadero;
			FinSi
		FinPara
	FinPara;
	Si existe= Falso Entonces
		Escribir "Este contacto no se encuentra registrado ";
	FinSi	
FinSubProceso