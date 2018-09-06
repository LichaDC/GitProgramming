Algoritmo TirarDosDados
	sigue<-0;
	contador<-1;
	Mientras sigue=0 Hacer
	Mostrar "    TIRADA N° " contador;
	Mostrar " El primer dado es " azar(5)+1;
	Mostrar "El segundo dado es " azar(5)+1;
	Mostrar "";
	Mostrar "Para tirar de nuevo los dados, precione enter.";
	Mostrar "Si quiere terminar, escriba algo algún número";
	Mostrar "";
	Mostrar "";
	contador<-contador+1;
	Leer sigue;
FinMientras
Mostrar "El juego terminó";
FinAlgoritmo
