Proceso sin_titulo
	suma<-0;
	cantidad<-0;
	Mostrar "Ingrese la nota 1";
	Leer nota;
	suma<-nota;
	Mientras nota!=0 Hacer
		Mostrar "Ingrese la nota " cantidad+2;
		leer nota;
		Mientras nota<0 o nota>10 Hacer
			Mostrar "Ingrese una nota v�lida";
			Leer nota;
		FinMientras
		suma=suma+nota;
		cantidad<-cantidad+1;
	FinMientras
	promedio<-suma/cantidad;
	Si promedio<6 Entonces
		Mostrar "tu promedio es ", promedio ". Vamos!! S� que puedes hacerlo mejor! :)";
	SiNo
		Mostrar "Tu promedio es ", promedio ". �Qu� te pens�s que por tener mejores notas en la escuela vas a hacer mejor tu trabajo? Idiota, dej� de hacerte el lindo.";
	FinSi
FinProceso
