Proceso sin_titulo
	suma<-0;
	cantidad<-0;
	Mostrar "Ingrese la nota 1";
	Leer nota;
	suma<-nota;
	Mientras nota!=0 Hacer
		Mostrar "Ingrese la nota " cantidad+2;
		leer nota;
		suma=suma+nota;
		cantidad<-cantidad+1;
	FinMientras
	promedio<-suma/cantidad;
	Si promedio<6 Entonces
		Mostrar "tu promedio es ", promedio "Vamos!! Sé que puedes hacerlo mejor! :)";
	SiNo
		Mostrar "Tu promedio es ", promedio ". ¿Qué te pensás que por tener mejores notas en la escuela vas a hacer mejor tu trabajo? Idiota, dejá de hacerte el lindo.";
	FinSi
FinProceso
