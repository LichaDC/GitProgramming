Algoritmo sin_titulo
	suma=0;
	par=0;
	impar=0;
	Cantpar=0;
	cantImpar=0;
	Escribir "Cantidad de n�meros:";
	leer cantidad;
	Si cantidad>0 Entonces
		Para i<-1 Hasta cantidad Con Paso 1 Hacer
			Escribir "Ingresar please el n�mero";
			Leer num;
			Si num%2 = 0 Entonces
				par=par+num;
				cantPar=cantPar+1;
			SiNo
				impar=impar+num;
				cantImpar=cantImpar+1;
			Fin Si
			suma=suma+num;
		FinPara
		Escribir  "El promedio de todos los n�meros es: ", suma/cantidad;
			Si cantPar>0 Entonces
				Escribir  "El promedio de los pares es: ", par/cantPar;
			SiNo
				Escribir "No hay n�meros pares.";
			Fin Si
			Si cantImpar>0 Entonces
				Escribir  "El promedio de los pares es: ", impar/cantImpar;
			SiNo
				Escribir "No hay n�meros impares";
			Fin Si
			Si cantImpar+cantImpar!=cantidad Entonces
				Escribir "La cantidad de ceros es: ", cantidad-(cantImpar+cantPar);
			FinSi
	SiNo
		Escribir "No pod�s dividir por 0 ni negativo, salame!";
	FinSi

FinAlgoritmo