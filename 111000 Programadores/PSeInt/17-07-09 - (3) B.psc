Proceso sin_titulo
	Mostrar "Escribir el primer n�mero";
	Leer num1;
	
	Para contador<-1 Hasta 10000 Con Paso 1
		Mostrar "Escriba otro n�mero";
		Leer num2;
		Si num1<num2 Entonces
			num1=num2;
			Mostrar "Los n�meros est�n ordenados";
		SiNo
			Mostrar "Los n�meros no est�n ordenados";
			contador=10000;
		FinSi
	FinPara
FinProceso