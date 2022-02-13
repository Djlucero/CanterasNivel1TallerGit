Proceso Ejercicio5
	Definir nombre,respuesta Como Caracter;
	
	respuesta<-" ";
	
	Repetir
		Escribir "***MENU DE USUARIO***";
	Escribir "Digite su Nombre y Apellido";
		leer nombre;
		Limpiar Pantalla;
		Escribir "Bienvenido ", nombre;
		Escribir "Desea continuar si/no";
		leer respuesta;
	 
		hasta que respuesta="no";
FinProceso
