Proceso Ejercicio6
	
	Definir nombre, documento, placa, modelo, mecanico, observaciones, repuestos, arreglo Como Caracter;
	definir opcion Como Entero;;
	Definir repuesto, devolucion Como Logico;
	
	
	
	Escribir "BIENVENIDOS TALLER DE MOTOS EL MAQUINISTA";
	
		Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1. REGISTRO DE INGRESO";
	Escribir "2. REGISTRO DE SALIDA ";
	leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Digite nombre y apellido del cliente";
			leer nombre;
			Escribir "Digite numero documento identidad del cliente";
			leer documento;
			Escribir "Digite numero de Placa de la moto";
			leer placa;
			Escribir "Digite modelo de la moto";
			leer modelo;
			Escribir "Digite observaciones por parte del cliente";
			leer observaciones;
			
			Limpiar Pantalla;
			Escribir "El señor(a) ",nombre, " identificado(a) con cedula No. ";
			Escribir documento, " ingresa la motocicleta de modelo; ";
			Escribir modelo, " y placa numero ", placa;
			Escribir "con las siguientes observaciones: ", observaciones;
					
			
		2:
			Escribir "REGISTRO DE SALIDA";
			Escribir "Digite nombre del mecanico que realiaza la reparación";
			leer mecanico;
			Escribir "Digite numero de Placa de la moto";
			leer placa;
			Escribir "Digite arreglos realizados por el mecanico";
			leer arreglo;
			Escribir " Desea añadir un inventario de respuestos? (digite V o F)";
 			Leer repuesto;
			Si repuesto= Verdadero Entonces;
				Escribir "Digite inventario cambio de repuestos";
				leer repuestos;
				Limpiar Pantalla;
				Escribir "el Mecanico ", mecanico," indica que a la moto de placas ", placa;
				Escribir "se le realizo arreglo con un inventario de los siguientes";
				Escribir "repuestos ", repuestos, " los cuales fueron usados para la reparación del vehiculo";
				Escribir "quedando en perfecto estado";
			FinSi
			
				FinSegun
	
	
	
FinProceso
