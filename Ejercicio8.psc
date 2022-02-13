Proceso Ejercicio8
	
	Definir nombre, documento Como Caracter;
	definir opcion,cantidad, precio,total Como Entero;;
	
	
	
	
	Escribir "BIENVENIDOS PASTELERIA DELICATESE";
	Escribir "para ofecerte un mejor servicio Digita la siguiente informacion";
	Repetir

	Escribir "Digite nombre y apellido del cliente";
	leer nombre;
	Escribir "Digite numero documento identidad del cliente";
	leer documento;
	
		Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
		Escribir "1. Torta festival cantidad 12 porciones decoracion crema chantilli";
		Escribir "2. Torta festival cantidad 30 porciones decoracion crema chantilli";
		Escribir "3. Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate ";
		Escribir "4. Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate ";
		Escribir "5. Torta 3 leches cantidad 12 porciones decoracion crema leche";
		Escribir "6. Salir";
	
	leer opcion;
	
	Segun opcion Hacer
		1:
			
			Escribir "Usted ha elegido Torta festival cantidad 12 porciones decoracion crema chantilli ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia señor(a) ", nombre, " su pedido es";
			Escribir "Torta festival cantidad 12 porciones decoracion crema chantilli ";
			Escribir "valor a cancelar ", total;
			
		2:
			Escribir "Usted ha elegido Torta festival cantidad 30 porciones decoracion crema chantilli ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia señor(a) ", nombre, " su pedido es";
			Escribir "Torta festival cantidad 30 porciones decoracion crema chantilli ";
			Escribir "valor a cancelar ", total;
			
		3: 
			Escribir "Usted ha elegido Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia señor(a) ", nombre, " su pedido es";
			Escribir "Torta de chocolate cantidad 12 porciones decoracion cubierta de chocolate  ";
			Escribir "valor a cancelar ", total;
			
		4:
			Escribir "Usted ha elegido Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate  ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia señor(a) ", nombre, " su pedido es";
			Escribir "Torta de chocolate cantidad 30 porciones decoracion cubierta de chocolate  ";
			Escribir "valor a cancelar ", total;
		5:
			Escribir "Usted ha elegido Torta 3 leches cantidad 12 porciones decoracion crema leche  ";
			Escribir "Ingrese cantidad";
			leer cantidad;
			Escribir "Digite precio";
			leer precio;
			total<-cantidad*precio;	
			Escribir "Buen dia señor(a) ", nombre, " su pedido es";
			Escribir "Torta 3 leches cantidad 12 porciones decoracion crema leche  ";
			Escribir "valor a cancelar ", total;
	FinSegun
Hasta Que opcion==6

FinProceso
