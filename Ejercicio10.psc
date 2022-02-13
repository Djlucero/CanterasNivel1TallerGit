Proceso Ejercicio10
	
	
	definir  opcion, cuenta,monto,retiro, saldo Como Entero;;
	Definir nombre, documento Como Caracter;;
	saldo <- 0;
	
	Escribir "BIENVENIDOS A SU BANCO FIEL";

		
		Escribir "Digite nombre y apellido del titular";
		leer nombre;
		Escribir "Digite numero de documento del titular";
		leer documento;
		Repetir		
		Escribir "Seleccione la opcion a realizar";
			Escribir "1. Consignaciones";
			Escribir "2. Retiros";
			Escribir "3. Consultas";
			Escribir "4. Salir";
		
	leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir nombre," Usted a elegido consignar";
			Escribir "Digite el numero de su cuenta";
			leer cuenta;
			Escribir "El valor minimo a consignar es de $10.000";
			Escribir "Digite valor a consignar";
			leer monto;
			Si monto>=10.000 Entonces
				Escribir "Transaccion exitosa";
			SiNo
				Escribir "El valor ingresado no coincide con los parametros establecidos";
			FinSi
			saldo <- saldo+monto;
			esperar 2 Segundos;
			Borrar Pantalla;
			
		2:
			Escribir nombre," Digite el numero de su cuenta";
			leer cuenta;
			Escribir "Digite el valor a retirar";
			leer retiro;
			Si retiro<=saldo Entonces
				Escribir "Transaccion realizada con exito";
				saldo<-saldo-retiro;
				esperar 2 Segundos;
				Borrar Pantalla;
			SiNo
				Escribir "No cuenta con fondos suficientes para la transaccion";
				esperar 2 Segundos;
				Borrar Pantalla;
			FinSi
													
		3: 
			Escribir nombre,"Usuario(a) de la cuenta No ", cuenta;
			Escribir "Su saldo es de $",saldo;
			esperar 2 Segundos;
			Borrar Pantalla;
					
	FinSegun
	
Hasta Que opcion==4

FinProceso
