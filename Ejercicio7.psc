Proceso ejercicio7
	
	Definir nombre,placa, nombre2, placa2,placa3,placa4,placa5, marca,placasalida,buscarplaca Como Caracter;
	definir telefono,opcion,i  Como Entero;
	
	i<-0;
	opcion<-0;
	telefono<-1;
	marca<-" ";
	placa<-" ";
	placasalida<-" ";
	buscarplaca<-" ";
	nombre<-" ";
	nombre2<-" ";
	placa2<-" ";
	placa3<-" ";
	placa4<-" ";
	placa5<-" ";

	
	Repetir
		
		Escribir 'PARQUEADERO EL GUARDIAN';
		Escribir '(1) Ingreso de Vehiculos';
		Escribir '(2) Salida de Vehiculos";
		Escribir '(3) Consultar';
		Escribir '(4) salir';
		leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Para i<-0 Hasta 4 Con Paso 1 Hacer
				Escribir '**** Ingreso de Vehiculo ****';
				Escribir 'Digite nombre y apellido de usuario',i+1;
				leer nombre;
				Escribir 'Digite numero de telefono',i+1;
				leer telefono;
				Escribir 'Digite placa del vehiculo',i+1;
				leer placa;
				Escribir 'Digite Marca del Vehiculo',i+1;
				leer marca;

			FinPara
		
			2:
				Escribir '*** Salida de Vehiculos ***';
				Escribir 'Digite numero de Placa del vehiculo';
				Leer placasalida;
				Si (placasalida==placa) Entonces;
					nombre<-" ";
					telefono<-0;
					placa<-" ";
					marca<-" ";
					
					Escribir "el vehiculo ha salido con exito";
				SiNo
					Escribir "el vehiculo no se encuentra en la base de datos";
				FinSi
				
				Esperar 2 Segundos;
				
				
			3:
				Escribir '*** Consultar Vehiculos ***';
				Escribir 'Digite numero de Placa del vehiculo';
				leer buscarplaca;
				
				Si (buscarplaca==placa) Entonces;
					Escribir "El vehiculo ", placa, "se encuentra en el estacionamiento ";
				SiNo
					Si (buscarplaca==placa2) Entonces;
						Escribir "El vehiculo ", placa, "se encuentra en el estacionamiento ";
						SiNo
						Si (buscarplaca==placa3) Entonces;
							Escribir "El vehiculo ", placa, "se encuentra en el estacionamiento ";
						SiNo
							Si (buscarplaca==placa4) Entonces;
								Escribir "El vehiculo ", placa, "se encuentra en el estacionamiento ";
							SiNo
								Si (buscarplaca==placa5) Entonces;
									Escribir "El vehiculo ", placa, "se encuentra en el estacionamiento ";
				
				SiNo
					si (marca=" ")  Entonces;
						Escribir "el vehiculo no se encuentra en la base de datos";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
			
				Finsi
				
				
			
				FinSegun	
		
	Hasta Que opcion= 4;
	
	
FinProceso