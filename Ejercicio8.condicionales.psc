Proceso Ejercicio8
	
	Definir nombre, contactos, documento Como Caracter;
	Definir opcion Como Entero; 
	Dimension contactos[3,3];	
	opcion <- 0;	
			
	Escribir "BIENVENIDOS PASTELERIA DELICATESE";
	Escribir "para ofecerte un mejor servicio Digita la siguiente informacion";
	Escribir "Digite nombre y apellido del cliente";
	leer nombre;
	Escribir "Digite numero documento identidad del cliente";
	leer documento;
	Repetir
		opcion <- menu();
		consultar();
	
	
Hasta Que opcion==6

FinProceso


	
	
	
	SubProceso datos <- solicitarDatos(mensaje)
		Definir datos Como Caracter;
		Escribir mensaje, Sin Saltar;
		Leer datos;
FinSubProceso

SubProceso opcion <- menu()
	Definir opcion Como Entero;
	Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1. Torta festival cantidad 12 porciones decoracion crema chantilli";
	Escribir "2. Torta festival cantidad 30 porciones decoracion crema chantilli";
	Escribir "3. Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate ";
	Escribir "4. Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate ";
	Escribir "5. Torta 3 leches cantidad 12 porciones decoracion crema leche";
	Escribir "6. Salir";
	
FinSubProceso

SubProceso consultar()
	Definir opcion,cantidad,precio,total Como Entero;
	Leer opcion;
		Segun opcion Hacer
		1:
			
			Escribir "Usted ha elegido Torta festival cantidad 12 porciones decoracion crema chantilli ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia su pedido es";
			Escribir "Torta festival cantidad 12 porciones decoracion crema chantilli ";
			Escribir "valor a cancelar ", total;
			
		2:
			Escribir "Usted ha elegido Torta festival cantidad 30 porciones decoracion crema chantilli ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia su pedido es";
			Escribir "Torta festival cantidad 30 porciones decoracion crema chantilli ";
			Escribir "valor a cancelar ", total;
			
		3: 
			Escribir "Usted ha elegido Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia su pedido es";
			Escribir "Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate  ";
			Escribir "valor a cancelar ", total;
			
		4:
			Escribir "Usted ha elegido Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate  ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia su pedido es";
			Escribir "Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate  ";
			Escribir "valor a cancelar ", total;
		5:
			Escribir "Usted ha elegido Torta 3 leches cantidad 12 porciones decoracion crema leche  ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia su pedido es";
			Escribir "Torta 3 leches cantidad 12 porciones decoracion crema leche  ";
			Escribir "valor a cancelar ", total;
	FinSegun
	esperar 2 Segundos;
	
FinSubProceso

