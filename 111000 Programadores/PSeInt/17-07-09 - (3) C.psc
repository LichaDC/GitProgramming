Proceso sin_titulo
	Mostrar "�Cu�ntos n�meros desea analizar?";
	Leer cantidad;
	Si cantidad<=1 Entonces
		Mostrar "Para comparar tiene que haber al menos dos n�meros, gil";
	SiNo
		Mostrar "Escriba el primer n�mero";
		Leer num1;
		Para contador<-1 Hasta (cantidad-1) Con Paso 1
			Mostrar "Escriba el siguiente n�mero";
			Leer num2;
			Si num1>num2 Entonces
				Mostrar "Los n�meros no est�n ordenados";
				contador=cantidad;
			SiNo
				Si contador=(cantidad-1) Entonces
					Mostrar "Los n�meros est�n ordenados";
				FinSi
			FinSi
		FinPara
	FinSi
FinProceso