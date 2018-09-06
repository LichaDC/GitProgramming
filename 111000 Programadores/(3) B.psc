Proceso sin_titulo
	Mostrar "Escribir el primer número";
	Leer num1;
	
	Para contador<-1 Hasta 10000 Con Paso 1
		Mostrar "Escriba otro número";
		Leer num2;
		Si num1<num2 Entonces
			num1=num2;
			Mostrar "Los números están ordenados";
		SiNo
			Mostrar "Los números no están ordenados";
			contador=10000;
		FinSi
	FinPara
FinProceso