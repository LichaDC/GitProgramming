Proceso sin_titulo
	Mostrar "Ingrese el nombre";
	Leer nombre;
	Mostrar "Ingrese el monto de la deuda";
	Leer deuda;
	Mostrar "Ingrese cuántos días hace que no compra";
	Leer dias;
	estado<-0;
	Si deuda<1000 y dias<30 Entonces
		estado<-1;
		Mostrar "Estamos bien vos, ",nombre;
	FinSi
	Si deuda>1000 y dias<30 Entonces
		estado<-2;
		Mostrar "Me estás empezando a preocupar ", nombre;
	FinSi
	Si deuda<1000 y dias>30 Entonces
		estado<-3;
		Mostrar "Pagá, ", nombre;
	FinSi
	Si deuda>1000 y dias>30 Entonces
		estado<-4;
		Mostrar "Te busco abajo de la cama ", nombre;
	FinSi
	Mostrar "Me debes ", deuda, " pesos hace ", dias, " días.";
FinProceso
