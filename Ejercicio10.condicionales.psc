Proceso Ejercicio10
	
	
	definir  opcion, cuenta,monto,retiro, saldo Como Entero;;
	Definir nombre, documento,persona Como Caracter;;
	Dimension persona[2];
	saldo <- 0;
	cuenta<-0;
	
	
	
	Escribir "BIENVENIDOS A SU BANCO FIEL";
	capturar(persona);
		Repetir		
		Escribir "Seleccione la opcion a realizar";
			Escribir "1. Consignaciones";
			Escribir "2. Retiros";
			Escribir "3. Consultas";
			Escribir "4. Salir";
		
	leer opcion;
	
	Segun opcion Hacer
		1:
			consignar(cuenta);
			leer monto;
			condicional(monto);
			saldo <- saldo+monto;
			esperar 2 Segundos;
			Borrar Pantalla;
			
		2:
			retirar(cuenta);
			leer retiro;
			condicionalretiro(retiro,saldo);
				saldo<-saldo-retiro;
				esperar 2 Segundos;
				Borrar Pantalla;
			
													
		3: 
			Escribir "Señor(a) Usuario(a)";
			Escribir "Su saldo es de $",saldo;
			esperar 2 Segundos;
			Borrar Pantalla;
					
	FinSegun
	
Hasta Que opcion==4

FinProceso


SubProceso capturar(persona Por Referencia)
	
	persona[0] <- capturarpersona("Digite nombre y apellido del titular ");
	persona[1] <- capturarpersona("Digite numero de documento del titular");
	
	
FinSubProceso

SubProceso persona <- capturarpersona(mensaje)
	Definir persona Como Caracter;
	Escribir mensaje;
	Leer persona;
FinSubProceso

SubProceso consignar(cuenta)
Escribir " Usted a elegido consignar";
Escribir "Digite el numero de su cuenta";
leer cuenta;
Escribir "El valor minimo a consignar es de $10.000";
Escribir "Digite valor a consignar";
FinSubProceso

SubProceso condicional(monto)
Si monto>=10.000 Entonces
	Escribir "Transaccion exitosa";
SiNo
	Escribir "El valor ingresado no coincide con los parametros establecidos";
FinSi
FinSubAlgoritmo

SubProceso retirar(cuenta)
Escribir " Digite el numero de su cuenta";
leer cuenta;
Escribir "Digite el valor a retirar";
FinSubProceso

SubProceso condicionalretiro(retiro,saldo)
	Si retiro>saldo Entonces
		Escribir "No cuenta con fondos suficientes para la transaccion";
	
	
	SiNo
		Escribir "Transaccion realizada con exito";
FinSi
FinSubProceso
