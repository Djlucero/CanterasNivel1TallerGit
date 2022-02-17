Proceso Ejercicio6
	
	Definir nombre, documento, placa, modelo, mecanico,inventario, observaciones,arreglo Como Caracter;
	definir opcion Como Entero;;
	Definir repuestos, devolucion Como Logico;
	Dimension dato[5];
	
	Repetir
		
	Escribir "BIENVENIDOS TALLER DE MOTOS EL MAQUINISTA";
	
	Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1. REGISTRO DE INGRESO";
	Escribir "2. REGISTRO DE SALIDA ";
	Escribir "3. SALIR";
	leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "REGISTRO DE INGRESO";
			nombre <- capturar(1);
			documento<-capturarcedula(1);
			placa <- capturarplaca(1);
			modelo<-capturarmodelo(1);
			observaciones<-capturarobservaciones(1);
				
			Limpiar Pantalla;
			Escribir "El señor(a) ",nombre, " identificado(a) con cedula No. ";
			Escribir documento, " ingresa la motocicleta de modelo; ";
			Escribir modelo, " y placa numero ", placa;
			Escribir "con las siguientes observaciones: ", observaciones;
			
			Esperar 2 Segundos;
			Limpiar Pantalla;		
			
		2:
			Escribir "REGISTRO DE SALIDA";
			mecanico<-capturarmecanico(1);
			placa <- capturarplaca(1);
			arreglo<-capturararreglo(1);
			repuestos<-capturarepuesto(1);
			Si repuestos= Verdadero Entonces;
				Escribir "Digite inventario cambio de repuestos";
				leer inventario;
			Limpiar Pantalla;
			Escribir "el Mecanico ", mecanico," indica que a la moto de placas ", placa;
			Escribir "se le realizo arreglo con un inventario de los siguientes";
			Escribir "repuestos ", inventario, " los cuales fueron usados para la reparación del vehiculo";
			Escribir "quedando en perfecto estado";
		FinSi
		
		Esperar 2 Segundos;
		Limpiar Pantalla;	
				FinSegun
	
			Hasta Que opcion==3;
			Escribir "Hasta pronto";
	
FinProceso

SubProceso datos<-capturar(nombre)
	Definir datos Como Caracter;
Escribir "Digite nombre y apellido del cliente",nombre;
	leer datos;
FinSubProceso

SubProceso datos<-capturarcedula(documento)
	Definir datos Como Caracter;
	Escribir "Digite numero documento identidad del cliente",documento;
	leer datos;
FinSubProceso

SubProceso datos<-capturarplaca(placa)
	Definir datos Como Caracter;
	Escribir "Digite numero de Placa de la moto",placa;
	leer datos;
FinSubProceso

SubProceso datos<-capturarmodelo(modelo)
	Definir datos Como Caracter;
	Escribir "Digite modelo de la moto",modelo;
	leer datos;
FinSubProceso

SubProceso datos<-capturarobservaciones(observaciones)
	Definir datos Como Caracter;
	Escribir "Digite observaciones por parte del cliente",observaciones;
	leer datos;

FinSubProceso

SubProceso datos<-capturarmecanico(mecanico)
	Definir datos Como Caracter;
	Escribir "Digite nombre del mecanico que realiaza la reparación",mecanico;
	leer datos;	
FinSubProceso

SubProceso datos<-capturararreglo(arreglo)
	Definir datos Como Caracter;
	Escribir "Digite arreglos realizados por el mecanico",arreglo;
	leer datos;	
FinSubProceso

SubProceso datos<-capturarepuesto(repuestos)
	Definir datos Como Logico;
	Escribir " Desea añadir un inventario de respuestos? (digite V o F)",repuestos;
	Leer datos;
	
	FinSubProceso
