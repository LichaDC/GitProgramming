Proceso sin_titulo
	Mostrar "¿Cuántos números desea analizar?";
	Leer cantidad;
	Si cantidad<=1 Entonces
		Mostrar "Para comparar tiene que haber al menos dos números, gil";
	SiNo
		Mostrar "Escriba el primer número";
		Leer num1;
		Para contador<-1 Hasta (cantidad-1) Con Paso 1
			Mostrar "Escriba el siguiente número";
			Leer num2;
			Si num1>num2 Entonces
				Mostrar "Los números no están ordenados";
				contador=cantidad;
			SiNo
				Si contador=(cantidad-1) Entonces
					Mostrar "Los números están ordenados";
				FinSi
			FinSi
		FinPara
	FinSi
FinProceso