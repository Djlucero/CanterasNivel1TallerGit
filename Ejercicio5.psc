Proceso Ejercicio5
	
	Definir nombre, producto, devolucion, caracteristica Como Caracter;
	definir opcion Como Entero;;
	Definir comentarios Como Logico;
	
	
	
	Escribir "BIENVENIDOS A SU DROGUERIA MI SALUD";
	
	Escribir "Digite nombre y apellido";
	leer nombre;
	
	Escribir "ESCOJA UNA DE LAS SIGUIENTES OPCIONES";
	Escribir "1. COMPRA DE PRODUCTO";
	Escribir "2. CONSULTAR PRECIOS ";
	Escribir "3. DEVOLUCIONES";
	leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Digite el nombre del producto";
			leer producto;
			Escribir "Digite caracteristicas del producto";
			leer caracteristica;
			Limpiar Pantalla;
			Escribir "Señor(a) ", nombre;
			Escribir "el producto ", producto, " con caracteristicas ";
			Escribir caracteristica, " sera entregado en caja al momento de su facturacion";
			Escribir "Muchas Gracias Por Su Compra";
			
		2:
			Escribir "CONSULTA DE PRECIOS";
			Escribir "* Ibuprofeno-200 mg PRECIO: $7500";
			Escribir "* Acido acetilsalicílico?500 mg PRECIO $20500";
			Escribir "* Morfina-10 mg (sulfato de morfina) PRECIO $18900";
			Escribir "* Dexametasona Inyección: 4 mg PRECIO $12500";
			Escribir "* Albendazol (masticables): 400 mg PRECIO $25500";
			Escribir "* Amoxicilina 250 mg PRECIO $30000";
			Escribir "* Azitromicina 500 mg PRECIO $13500";
			Escribir "* pirazinamida 400 mg PRECIO $15000";
			
			
		3:
			Escribir " DEVOLUCIONES";
			Escribir " Digite el nombre del producto a devolver";
			leer producto;
			Escribir " Desea añadir un comentario? (digite V o F)";
 			Leer comentarios;
			Si comentarios= Verdadero Entonces
				Escribir "Digite Comentarios y Observaciones";
				leer devolucion;
				Limpiar Pantalla;
				Escribir "el Medicamento ", producto," presenta novedad de devolucion por";
				Escribir devolucion;
				
				
			FinSi
	FinSegun
	
	
	
FinProceso