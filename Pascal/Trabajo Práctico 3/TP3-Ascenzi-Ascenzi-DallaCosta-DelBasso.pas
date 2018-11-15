program TP3;
uses crt, sysutils;
     TYPE
          Gimnasio = RECORD
               nombre:  STRING[30];
               dir:     STRING[30];
               cuota:   REAL;
               nutri:   REAL;
               trainer: REAL;
          END;

          Actividades = RECORD
               cod: INTEGER;
               desc: STRING[30];
               baja: BOOLEAN;
          END;
              
          DiayHora = RECORD
               cod:  INTEGER;
               dia:  INTEGER;
               hora: STRING[5];
               baja: BOOLEAN;
          END;

          EjerciciosxRutinas = RECORD
               cod:     INTEGER;
               descrip: STRING[30];
               baja: BOOLEAN;
          END;

          Clientes = RECORD
               dni:     STRING[8];
               NyA:     STRING[30];
               rutina:  BOOLEAN;
               nutri:   BOOLEAN;
               trainer: BOOLEAN;
               peso:    ARRAY [1 .. 12] of REAL;
               monto:   ARRAY [1 .. 12] of REAL;
               pago:    ARRAY [1 .. 12] of BOOLEAN;
          END;

          RutinaxCliente = RECORD // Rutina x Cliente
               dni:   STRING[8];
               mes:   INTEGER;
               anio:   INTEGER;
               baja:  BOOLEAN;
               repes: ARRAY [1 .. 4, 1 .. 50] of INTEGER;
          END;


     VAR
          aGym:   FILE OF Gimnasio;
          aAct:   FILE OF Actividades;
          aDyH:   FILE OF DiayHora;
          aExR:   FILE OF EjerciciosxRutinas;
          aC:     FILE OF Clientes;
          aRxC:   FILE OF RutinaxCliente;

          rGym:   Gimnasio;
          rAct:   Actividades;
          reg, reg2, rDyH:   DiayHora;
          rExR:   EjerciciosxRutinas;
          rC:     Clientes;
          rRxC:   RutinaxCliente;

          encontrado: BOOLEAN;
          pos, i, mes, j: INTEGER;
          yy, mm, dd: WORD;
          rtaStr: STRING[30];
          rtaInt: INTEGER;
          rtaReal, total: REAL;
          rtaBool: BOOLEAN;
          auxInt: INTEGER;
          hora: STRING[5];
          descrip:STRING[30];


// - - - - - - - - - - - - - - -  FUNCTIONS  - - - - - - - - - - - - - - -  //
// - Pedir String - //
FUNCTION pedirStr(str: STRING): STRING;
  BEGIN
       write(str, ': ');
       readln(pedirStr);
  END;

// - Pedir Integer ( Con opciones ) - //
FUNCTION pedirInt(str: STRING; min, max: INTEGER): INTEGER;
     VAR rta: INTEGER;
  BEGIN
     IF (str <> '') THEN
          write(str, ': ');
     readln(rta);
     WHILE (rta < min) OR (rta > max) DO
       BEGIN
          write('Valor invalido, intente de nuevo: ');
          readln(rta);
       END;
     pedirInt := rta;
  END;

// - Pedir Integer ( Sin opciones ) - //
FUNCTION pedirInt(str: STRING): INTEGER;
  BEGIN
     IF (str <> '') THEN
          write(str, ': ');
     readln(pedirInt);
  END;

// - Pedir Real - //
FUNCTION pedirReal(str: STRING): REAL;
  BEGIN
     IF (str <> '') THEN
          write(str, ': ');
     readln(pedirReal);
  END;

// - Pedir Boolean - //
FUNCTION pedirBool(str: STRING): BOOLEAN;
  var rta: STRING;
  BEGIN
     IF (str <> '') THEN
          write(str, ' - [ si / no ]: ');
     readln(rta);
     REPEAT
          IF (rta = 's') OR (rta = 'S') OR (rta = 'si') OR (rta = 'Si') OR (rta = 'SI') THEN
            BEGIN
               pedirBool := true;
            END
          ELSE IF (rta = 'n') OR (rta = 'N') OR (rta = 'no') OR (rta = 'No') OR (rta = 'NO')  THEN
            BEGIN
               pedirBool := false;
            END
          ELSE
            BEGIN
               write('Valor invalido, intente de nuevo: ');
               readln(rta);
            END;
     UNTIL (pedirBool = true) OR (pedirBool = false);
  END;

// - - - - - - - - - - - - - - - PROCEDURES - - - - - - - - - - - - - - - - //
// - Mostrar Título - //
PROCEDURE Titulo(str: string);
  BEGIN
       clrScr;
       writeln('- - - ', str, ' - - -');
       writeln();
  END;

// - Mostrar Opción - //
PROCEDURE Opcion(num: INTEGER; str: STRING);
  BEGIN
       writeln('[', num, '] ', str, '.');
       writeln();
  END;

// - Alta - // (Abm)- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Procedure Alta();
  BEGIN
     titulo('Que archivo desea dar de alta?');
     opcion(1, 'Gimnasio');
     opcion(2, 'Actividades');
     opcion(3, 'Dias y Horarios');
     opcion(4, 'Ejercicios por Rutina');
     opcion(5, 'Salir');
     rtaInt := pedirInt('', 1, 5);
     clrscr;
     CASE rtaInt OF

          // [1] Alta Gimnasio
          1:
            BEGIN
               reset(aGym);
               IF (ioresult = 2) THEN
                    rewrite(aGym);
               IF (filesize(aGym) = 1) THEN
                 BEGIN
                    writeln('Ya esta dado de alta!');
                    readkey;
                 END;
               IF filesize(aGym) = 0 THEN
                 BEGIN
                    titulo('Seleccionaste Alta de Gimnasio');
                    rGym.nombre  := pedirStr('Ingrese el nombre del gimnasio');
                    rGym.dir     := pedirStr('Ingrese la direccion del gimnasio');
                    rGym.cuota   := pedirReal('Ingrese el valor de la cuota');
                    rGym.nutri   := pedirReal('Ingrese el valor del nutricionista');
                    rGym.trainer := pedirReal('Ingrese el valor del personal trainer');
                    write(aGym, rGym);
                 END;
            END; // Fin Alta Gimnasio

          // [2] Alta Actividades
          2:
            BEGIN
               reset(aGym);
               IF (ioresult = 2) THEN
                 BEGIN
                    writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1');
                    readkey;
                 END
               ELSE
                 BEGIN
               reset(aAct);
               IF (ioresult = 2) THEN
                    rewrite(aAct);
               seek(aAct, filesize(aAct));
               titulo('Seleccionaste Alta de Actividades');
               REPEAT
                    writeln('Actividad Nro: ',filepos(aAct)+1);
                    rAct.cod := filepos(aAct)+1;
                    rtaStr := pedirStr('Ingrese la descripcion de la actividad');
                    rAct.desc := rtaStr;
                    write(aAct, rAct);
                    rtaBool := pedirBool('Quiere volver a cargar?');
                    clrscr;
               UNTIL (NOT rtaBool);
             END;
            END; // Fin Alta Actividades

          // [3] Alta Días y Horarios
          3: 
            BEGIN
               reset(aGym);
               IF (ioresult = 2) THEN
                 BEGIN
                    writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1');
                    readkey;
                 END
               ELSE
                 BEGIN
                    reset(aDyH);
                    IF (ioresult = 2) THEN
                         rewrite(aDyH);
                    reset(aAct);
                    IF (ioresult = 2) THEN
                      BEGIN
                         writeln('PRIMERO DEBE DAR DE ALTA LAS ACTIVIDADES');
                         readkey();
                      END
                    ELSE
                      BEGIN
                         titulo('Seleccionaste Alta de dias y horarios');
                         IF (filesize(aAct)) <> 0 THEN
                           BEGIN
                              REPEAT
                                   writeln('Que actividad queres modificar? [ 1 a ', filesize(aAct), ']');
                                   rtaInt := pedirInt('', 1, filesize(aAct))-1;
                                   seek(aAct, rtaInt);
                                   read(aAct,rAct);
                                   writeln('Elegiste modificar la actividad: "', rAct.desc, '"');
                                   seek(aDyH, rtaInt);
                                   rDyH.cod  := rtaInt;
                                   rDyH.dia  := pedirInt('Ingrese el dia en que se hara la actividad [ 1 -> Lunes | 6 -> Sabado ]', 1, 6);
                                   rDyH.hora := pedirStr('Ingrese la hora en que se hara la actividad [ hh:mm ]');
                                   write(aDyH, rDyH);
                                   rtaBool := pedirBool('Quiere volver a cargar?');
                                   clrScr;
                              UNTIL (NOT rtaBool);
                            END;
                         IF auxInt = filepos(aDyH) THEN
                           BEGIN
                              writeln('No hay mas actividades sin asignar');
                              readkey;
                           END;
                      END;
                 END;
            END; // Fin Alta Días y Horarios

          // [4] Alta Ejercicios por Rutina
          4: 
            BEGIN
               reset(aGym);
               IF (ioresult = 2) THEN
                 BEGIN
                    writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1');
                    readkey;
                 END
               ELSE
                 BEGIN
                    reset(aExR);
                    IF (ioresult = 2) THEN
                         rewrite(aExR);
                    seek(aExR, filesize(aExR));
                    titulo('Seleccionaste Alta de Ejercicios por Rutina');
                    REPEAT
                         rExR.cod := filepos(aExR)+1;
                         writeln('Ejercicio Nro: ',rExR.cod);
                         rExR.descrip := pedirStr('Ingrese una descripcion del ejercicio');
                         write(aExR, rExR);
                         rtaBool := pedirBool('Quiere volver a cargar?');
                         clrScr;
                    UNTIL (NOT rtaBool);
                 END;
            END; // Fin Alta Ejercicios por Rutina
     END; // Fin Case of
  END; // Fin Procedure Alta (Abm)


// - Modificacion - // (abM)
Procedure Modificacion();
  BEGIN
     reset(aGym);
     IF (ioresult = 2) THEN
       BEGIN
          writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1');
          readkey;
       END
     ELSE
       BEGIN
          read(aGym,rGym);
          REPEAT
               titulo ('Elegiste modificacion:');
               writeln('Ingrese que opcion quiere editar:');
               writeln();
               writeln();
               writeln('[1] Gimnasio: ',rGym.nombre);
               writeln();
               writeln('[2] Direccion: ',rGym.dir);
               writeln();
               writeln('[3] Valor de la cuota: $',rGym.cuota:4:2);
               writeln();
               writeln('[4] Valor del nutricionista: $',rGym.nutri:4:2);
               writeln();
               writeln('[5] Valor del personal trainer: $',rGym.trainer:4:2);
               writeln();
               writeln('[6] Volver');
               writeln();
               rtaInt := pedirInt('', 1, 6);
               writeln();
               writeln();
               writeln();
               CASE rtaInt OF
                    1:
                      BEGIN
                         reset(aGym);
                         rGym.nombre := pedirStr('Ingrese el nombre del gimnasio');
                         write(aGym, rGym);
                         writeln('Se ha cambiado el nombre del gimnasio. Presione alguna tecla para salir.');
                         readkey();
                      END;
                    2:
                      BEGIN
                         reset(aGym);
                         rGym.dir := pedirStr('Ingrese la direccion del gimnasio');
                         write(aGym, rGym);
                         writeln('Se ha cambiado la dirección del gimnasio. Presione alguna tecla para salir.');
                         readkey();
                      END;
                    3:
                      BEGIN
                         reset(aGym);
                         rGym.cuota := pedirReal('Ingrese el valor de la cuota');
                         write(aGym, rGym);
                         writeln('Se ha cambiado el valor de la cuota. Presione alguna tecla para salir.');
                         readkey();
                      END;
                    4:
                      BEGIN
                         reset(aGym);
                         rGym.nutri := pedirReal('Ingrese el valor del nutricionista');
                         write(aGym, rGym);
                         writeln('Se ha cambiado el valor del nutricionista. Presione alguna tecla para salir.');
                         readkey();
                      END;
                    5:
                      BEGIN
                         reset(aGym);
                         rGym.trainer := pedirReal('Ingrese el valor del personal trainer');
                         write(aGym, rGym);
                         writeln('Se ha cambiado el valor del personal trainer. Presione alguna tecla para salir.');
                         readkey();
                      END;
               END; // Fin Case of
          UNTIL rtaInt = 6;
       END;
  END; // Fin procedure Modificacion(abM)

// - - - - - - - - - - - - - - ABM MENU[ Punto 1 ] - - - - - - - - - - - - - - //
Procedure ABM();
  BEGIN
     titulo('Que desea hacer?');
     opcion(1, 'Alta');
     opcion(2, 'Modificacion');
     opcion(3, 'Volver');
     rtaInt := pedirInt('', 1, 3);
     clrscr;
     CASE rtaInt OF
          1: Alta();
          2: Modificacion();
     END;
  END; // Fin Procedure ABM

// - - - - - - - - - - CLIENTE - [ Punto 2 ] - - - - - - - - - - - - - //
PROCEDURE Cliente();
  BEGIN
     reset(aGym);
     IF (ioresult = 2) THEN
       BEGIN
          writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1!');
          readkey;
       END
     ELSE
       BEGIN
          reset(aC);
          IF (ioresult = 2) THEN
               rewrite(aC);
          rtaStr := pedirStr('Ingrese el DNI del Cliente');
          encontrado := false;
          WHILE NOT eof(aC) AND NOT encontrado DO
            BEGIN
               read(aC,rC);
               IF (rtaStr = rC.dni) THEN
                    encontrado := true;
            END;
          // Crea un nuevo perfil
          IF NOT encontrado THEN
            BEGIN
               // Información del cliente
               writeln('No se encontro el cliente, se procedera a registrarlo:');
               writeln('- - - - - - - - - - - - - - - - - - - - - - - - - - - ');
               seek(aC,filesize(aC));
               rC.dni := rtaStr;
               rC.NyA := pedirStr('Ingrese el Nombre y Apellido del Cliente');
               rC.trainer := pedirBool('Necesitara personal trainer?');
               rC.nutri := pedirBool('Necesitara nutricionista?');
               rC.rutina := pedirBool('Necesitara hacer una rutina?');
               rC.peso[mm] := pedirReal('Cuanto pesa el Cliente?');
               rC.pago[mm] := true;
          reset(aGym);
          read(aGym,rGym);
          rC.monto[mm]:= rC.monto[mm]+rGym.cuota;
          IF rC.trainer THEN
               rC.monto[mm]:= rC.monto[mm]+rGym.trainer;
          IF rC.nutri THEN
               rC.monto[mm]:= rC.monto[mm]+rGym.nutri;
          write(aC,rC);
          // Si hace rutina
          IF rC.rutina THEN
            BEGIN
               reset(aRxC);
               IF (ioresult = 2) THEN
                    rewrite(aRxC);
               seek(aRxC,filesize(aRxC));
               rRxC.dni := rtaStr;
               rRxC.mes := mm;
               rRxC.anio := yy;
               rRxC.baja := false;
               // Pone todas las repeticiones en 0
               FOR i := 1 TO 4 DO
                 BEGIN
                    FOR j := 1 TO 50 DO
                         rRxC.repes[i,j] := 0;
                 END;
               write(aRxC,rRxC);
               writeln('Para cargar la rutina del cliente vaya al punto 3 del menu.');
               readkey;
            END;
       END // If no existe cliente
     ELSE
       BEGIN
           IF NOT rC.pago[mm] THEN
             BEGIN
                writeln('La cuota esta impaga, no se puede continuar.');
                rtaBool := pedirBool('Desea pagar ahora?');
                IF (rtaBool) THEN
                  BEGIN
                     clrscr;
                     writeln('El cliente ahora tiene pago el mes ', mm, '. Ya puede ingresar.');
                     readkey();
                  END
                ELSE
                  BEGIN
                     clrscr;
                     writeln('Lo lamentamos, no puede ingresar teniendo la cuota impaga');
                     readkey();
                  END;
             END // No pago
           ELSE
             BEGIN
                clrscr;
                writeln('El cliente tiene el mes ', mm, ' pago. Puede ingresar!');
                readkey();
             END;
       END;
   END;
END; // Fin Procedure Clientes

// - - - - - - - - - - - - - RUTINAS - [ Punto 3 ] - - - - - - - - - - - - - //
PROCEDURE Rutinas();
  BEGIN
     reset(aGym);
       IF (ioresult = 2) THEN
         BEGIN
            writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1!');
            readkey();
         END
       ELSE
         BEGIN
            reset(aRxC);
            IF (ioresult = 2) THEN
              BEGIN
                 writeln('No hay clientes para cargar rutinas');
                 readkey;
              END
            ELSE
              BEGIN
                 titulo('Rutinas por clientes');
                 rtaStr := pedirStr('Ingrese el DNI del Cliente');
                 encontrado := false;
                 WHILE (NOT encontrado) AND (NOT eof(aRxC)) DO
                   BEGIN
                      read(aRxC, rRxC);
                      IF (rtaStr = rRxC.dni) AND (yy = rRxC.anio) AND (mm = rRxC.mes) AND (rRxC.baja = false) THEN
                        BEGIN
                           encontrado := true;
                           pos := filepos(aRxC);
                        END;
                   END;
                 IF (encontrado) THEN
                   BEGIN
                      rtaInt := pedirInt('Que ejercicio quiere hacer? [ 0 -> Salir ]', 0, 50);
                      WHILE (rtaInt <> 0) DO
                        BEGIN
                           reset(aExR);
                           encontrado := false;
                           WHILE (NOT eof(aExR)) AND (NOT encontrado) DO
                             BEGIN
                                read(aExR,rExR);
                                IF rtaInt = rExR.cod THEN
                                     encontrado := true;
                             END;
                             seek(aRxC,pos);
                             FOR i := 1 TO 4 DO
                               BEGIN
                                  write('Cuantas repeticiones del ejercicio ', rtaInt, ' hace en la serie nro ', i, ': ');
                                  readln(rRxC.repes[i,rtaInt])
                               END;
                             rtaInt := pedirInt('Que otro ejercicio quiere hacer? [ 0 -> Salir ]', 0, 50);
                        END; // Fin while
                      write(aRxC, rRxC);
                      IF rtaInt = 0 THEN
                        BEGIN
                           rtaReal := pedirReal('Ingrese el peso actual de la persona');
                           reset(aC);
                           rtaBool := false;
                           WHILE (NOT eof(aC)) OR (NOT rtaBool) DO
                             BEGIN
                                read(aC,rC);
                                IF rC.dni = rtaStr THEN
                                  BEGIN
                                     rtaBool := true;
                                     rC.peso[mm]:= rtaReal;
                                     writeln('El peso de la persona ahora es de: ',rC.peso[mm]:3:3);
                                     readkey;
                                  END;
                                write(aC,rC);
                             END;
                        END;
                   END //Se encontro el cliente
                 ELSE
                   BEGIN
                      writeln('El cliente no hace rutina');
                      readkey;
                   END;
            END;
       END;
  END; // Fin procedure Rutinas

// - - - - - - - - - - LISTADO DIA Y HORA - [Punto 4] - - - - - - - - - - -//
PROCEDURE listadoDyH;
  BEGIN
     reset(aGym);
     IF (ioresult = 2) THEN
       BEGIN
          writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1!');
          readkey;
       END
     ELSE
       BEGIN
          IF filesize(aGym) <> 0 THEN
            BEGIN//(1)
               read(aGym,rGym);
               titulo('Elegiste ver listado de dias y horarios');
               writeln('Gimnasio:',rGym.nombre);
               writeln('Direccion:',rGym.dir);
               writeln('Valor de la cuota:$',rGym.cuota:4:2);
               writeln('Valor del nutricionista:$',rGym.nutri:4:2);
               writeln('Valor del personal trainer:$',rGym.trainer:4:2);
               writeln('-----------------------------------------------------------------------');
               // Mostrar listado
               reset(aDyH);
               IF (ioresult = 2) THEN
                 BEGIN
                    writeln('No estan cargados los dias y horarios');
                    readkey;
                 END
               ELSE
                 BEGIN//(3)
                    //Aplico falso burbuja para ordenar dias
                    reset(aDyH);
                    i := 0;
                    j := 0;
                    FOR i := 0 TO filesize(aDyH)-2 DO
                      BEGIN
                         FOR j := i+1 TO filesize(aDyH)-1 DO
                           BEGIN
                              seek(aDyH,i);
                              read(aDyH,reg);
                              seek(aDyH,j);
                              read(aDyH,reg2);
                              IF reg.dia > reg2.dia THEN
                                BEGIN
                                   seek(aDyH,i);
                                   write(aDyH,reg2);
                                   seek(aDyH,j);
                                   write(aDyH,reg);
                                END;
                           END;
                      END;
                    //Ordeno por hora
                    i := 0;
                    j := 0;
                    FOR i := 0 TO filesize(aDyH)-2 DO
                      BEGIN
                         FOR j := i+1 TO filesize(aDyH)-1 DO
                           BEGIN
                              seek(aDyH,i);
                              read(aDyH,reg);
                              seek(aDyH,j);
                              read(aDyH,reg2);
                              IF reg.dia = reg2.dia THEN
                                BEGIN
                                   IF reg.hora > reg2.hora THEN
                                     BEGIN
                                        seek(aDyH,i);
                                        write(aDyH,reg2);
                                        seek(aDyH,j);
                                        write(aDyH,reg);
                                     END;
                                END;
                           END;
                      END;
                    //Muestro el listado
                    //DIA LUNES - - - - - - - - -
                    i := 0;
                    writeln('- - - LUNES - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         IF rDyH.dia = 1 THEN
                           BEGIN
                              auxInt := rDyH.cod;
                              writeln('Hora:', rDyH.hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    //DIA MARTES - - - - - - - - -
                    i := 0;
                    writeln('- - - MARTES - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         hora := rDyH.hora;
                         auxInt := rDyH.cod;
                         IF rDyH.dia = 2 THEN
                           BEGIN
                              writeln('Hora:', hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    //DIA MIERCOLES - - - - - - - - -
                    i := 0;
                    writeln('- - - MIERCOLES - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         hora := rDyH.hora;
                         auxInt := rDyH.cod;
                         IF rDyH.dia = 3 THEN
                           BEGIN
                              writeln('Hora:', hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    //DIA JUEVES - - - - - - - - -
                    i := 0;
                    writeln('- - - JUEVES - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         hora := rDyH.hora;
                         auxInt := rDyH.cod;
                         IF rDyH.dia = 4 THEN
                           BEGIN
                              writeln('Hora:', hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    //DIA VIERNES - - - - - - - - -
                    i := 0;
                    writeln('- - - VIERNES - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         hora := rDyH.hora;
                         auxInt := rDyH.cod;
                         IF rDyH.dia = 5 THEN
                           BEGIN
                              writeln('Hora:', hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    //DIA SABADO - - - - - - - - -
                    i := 0;
                    writeln('- - - SABADO - - - ');
                    FOR i := 0 TO filesize(aDyH)-1 DO
                      BEGIN
                         seek(aDyH,i);
                         read(aDyH,rDyH);
                         hora := rDyH.hora;
                         auxInt := rDyH.cod;
                         IF rDyH.dia = 6 THEN
                           BEGIN
                              writeln('Hora:', hora);
                              reset(aAct);
                              encontrado := false;
                              WHILE (NOT eof(aAct)) OR (NOT encontrado) DO
                                BEGIN
                                   read(aAct,rAct);
                                   IF (auxInt = rAct.cod) THEN
                                     BEGIN
                                        encontrado := true;
                                        descrip := rAct.desc;
                                        writeln('Actividad:', descrip);
                                     END;
                                END;
                           END;
                      END;
                    readkey;
                 END;
            END;
       END;
  END; // Fin Procedure DyH

PROCEDURE recaudacion;// - - - - - - - - Punto 5 - - - - - - - - - - - - - - - -
  BEGIN
     reset(aGym);
     IF (ioresult = 2) THEN
       BEGIN
          writeln('PRIMERO DE EL ALTA DEL GIMNASIO EN LA OPCION 1!');
          readkey;
       END
     ELSE
       BEGIN
          reset(aC);
          IF ioresult = 2 THEN
            BEGIN
              writeln('No estan cargados los clientes');
              readkey;
            END
          ELSE
            BEGIN//(1)
               mes := pedirInt('Ingrese un mes [ 1 a 12 | 0 -> Salir ]');
               WHILE mes <> 0 DO
                 BEGIN//(2)
                    total := 0;
                    WHILE NOT eof(aC) DO
                      BEGIN//(3)
                         read(aC,rC);
                         total := total + rC.monto[mes];
                      END;//(3)
                    clrscr;
                    writeln('La recaudacion del mes ',mes,' es de : $',total:6:2);
                    writeln;
                    mes := pedirInt('Ingrese otro mes [ 1 a 12 | 0 -> Salir ]');
                    total := 0;
                    reset(aC);
                 END;//(2)
            END;//(1)
       END;
  END;

// - - - - - - - - - - - - - - PROCEDURE BLANQUEO (PUNTO 6)- - - - - - - - - - -
PROCEDURE blanqueo;
  BEGIN
     rtaBool := pedirBool('Esta seguro de que quiere continuar con el blanqueo?');
     IF rtaBool THEN
       BEGIN
          rtaInt := pedirInt('Elija una opcion: [1] Clientes | [2] RutinasxClientes',1 ,2);
          CASE rtaInt OF
               1:
                 BEGIN
                    reset(aC);
                    IF ioresult = 2 THEN
                      BEGIN
                         writeln('No hay clientes cargados');
                         readkey;
                      END
                    ELSE
                      BEGIN
                         WHILE (NOT eof(aC)) DO
                           BEGIN//(1)
                              read(aC,rC);
                              FOR i:= 1 TO 12 DO
                                BEGIN//(2)
                                   rC.monto[i] := 0;
                                   rC.pago[i] := false;
                                   rC.peso[i] := 0;
                                END;//(2)
                              seek(aC,filepos(aC)-1);
                              write(aC,rC);
                           END;//(1)
                         IF eof(aC) THEN
                           BEGIN
                              writeln('El blanqueo se realizo con exito');
                              readkey;
                           END;
                      END;
                 END;
               2:
                 BEGIN
                    reset(aRxC);
                    IF ioresult = 2 THEN
                      BEGIN
                         writeln('No hay rutinas cargadas');
                         readkey;
                      END
                    ELSE
                      BEGIN
                         rtaInt := pedirInt('Ingrese un anio', 1900, 2050);
                         auxInt := pedirInt('Ingrese un mes', 1, 12);
                         WHILE NOT eof(aRxC) DO
                           BEGIN
                              read(aRxC,rRxC);
                              IF (rtaInt = rRxC.anio) AND (auxInt = rRxC.mes) THEN
                                BEGIN
                                   rRxC.baja := true;
                                   seek(aRxC,filepos(aRxC)-1);
                                   write(aRxC,rRxC);
                                END;
                           END;
                         IF eof(aRxC)THEN
                           BEGIN
                              writeln('La baja de rutinas se realizo con exito');
                              readkey;
                           END;
                      END;
                 END;
          END;
       END;
  END;

// - - - Menu - - - //
Procedure menu();
  BEGIN
     REPEAT
          clrscr;
          titulo('- - - - - - - - - - MENU - - - - - - - - - - - -');
          writeln('FECHA: - - ',dd,'/',mm,'/',yy,' - -');
          writeln();
          opcion(1, 'ABM');
          opcion(2, 'Clientes');
          opcion(3, 'Rutinas por clientes');
          opcion(4, 'Listado de dias y horarios');
          opcion(5, 'Recaudacion');
          opcion(6, 'Reiniciar (blanqueo)');
          opcion(7, 'Salir');
          rtaInt := pedirInt('', 1, 7);
          clrscr;
          CASE rtaInt OF
               1: ABM();
               2: Cliente();
               3: Rutinas();
               4: ListadoDyH();
               5: Recaudacion();
               6: Blanqueo();
               7:
                 BEGIN
                    close(aGym);
                    close(aAct);
                    close(aDyH);
                    close(aExR);
                    close(aC);
                    close(aRxC);
                 END;
          END;
     UNTIL rtaInt = 7;
  END; // Procedure Menu

BEGIN // - - - - - - - - - - - - - - MAIN - - - - - - - - - - - - - - - - //

     assign(aGym, 'c:\tp3\Gimnasio.dat');
     assign(aAct, 'c:\tp3\Actividades.dat');
     assign(aDyH, 'c:\tp3\DiaxHora.dat');
     assign(aExR, 'c:\tp3\EjerciciosxRutinas.dat');
     assign(aC,   'c:\tp3\Clientes.dat');
     assign(aRxC, 'c:\tp3\RutinaxCliente.dat');

     DeCodeDate(date(), yy, mm, dd );

     menu();

END.
