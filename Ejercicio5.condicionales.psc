Proceso Ejercicio5
	
	Definir nombre, medicamentos, devolucion, caracteristica Como Caracter;
	definir opcion Como Entero;;
	Definir comentarios Como Logico;
	Dimension  medicamentos[8];
	caracteristica<-" ";
	
	Escribir "BIENVENIDOS A SU DROGUERIA MI SALUD";
	
	Escribir "Digite nombre y apellido";
	leer nombre;
	
	Repetir
	Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1. COMPRA DE PRODUCTO";
	Escribir "2. CONSULTAR PRECIOS ";
	Escribir "3. DEVOLUCIONES";
	Escribir "4. SALIR";
	leer opcion;
	
	Segun opcion Hacer
		1:
			llenarmedicamento(medicamentos,caracteristica);
			
			
		2:
			Escribir "CONSULTA DE PRECIOS";
			listarmedicamentos(medicamentos);
			
			
		3:
			Escribir " DEVOLUCIONES";
			devolvermedicamento(medicamentos);
			
			Escribir " Desea añadir un comentario? (digite V o F)";
			Leer comentarios;
			Si comentarios= Verdadero Entonces
				Escribir "Digite Comentarios y Observaciones";
				leer devolucion;
				Limpiar Pantalla;
				Escribir "el Medicamento ", medicamentos[]," presenta novedad de devolucion por";
				Escribir devolucion;
				Esperar 2 Segundos;
				Limpiar Pantalla;
			FinSi
			
		
	FinSegun
	Hasta Que opcion==4;
	
FinProceso

SubProceso llenarmedicamento(medicamentos,caracteristica)
	definir i Como Entero;
	para i<-1 hasta 1 Con Paso 1 Hacer
		Escribir "digite nombre del producto";
		Leer medicamentos[i];
		Escribir "digite caracteristicas del producto ",caracteristica;
		leer caracteristica;
		Limpiar Pantalla;
		Escribir "el producto ", medicamentos[i], " con caracteristicas ";
		Escribir caracteristica, " sera entregado en caja al momento de su facturacion";
		Escribir "Muchas Gracias Por Su Compra";
		Esperar 2 Segundos;
		Limpiar Pantalla;
	FinPara
	
FinSubProceso

SubProceso listarmedicamentos(medicamentos)
	Definir i Como Entero;
	para i<-0 hasta 7 Con Paso 1 Hacer
		medicamentos[0] <- "1.Ibuprofeno-200 mg PRECIO: $7500";
		medicamentos[1] <- "2.Acido acetilsalicílico 500 mg PRECIO $20500";
		medicamentos[2] <- "3.Morfina-10 mg (sulfato de morfina) PRECIO $18900";
		medicamentos[3] <- "4.Dexametasona Inyección: 4 mg PRECIO $12500";
		medicamentos[4] <- "5.Albendazol (masticables): 400 mg PRECIO $25500";
		medicamentos[5] <- "6.Amoxicilina 250 mg PRECIO $30000";
		medicamentos[6] <- "7.Azitromicina 500 mg PRECIO $13500";
		medicamentos[7] <- "pirazinamida 400 mg PRECIO $15000";
		Escribir medicamentos[i];
		FinPara
	Escribir " ";
FinSubProceso

SubProceso devolvermedicamento(medicamentos)
	Escribir " Digite el nombre del producto a devolver";
leer medicamentos[];
	
FinSubProceso
