Program ruleta;                         
uses crt;

var i, jugadores, rta, activo, tipo, resultado, vuelta, campeon : Integer;
var ganador : Boolean;
var saldo   : array[1..5] of Integer;
var monto   : array[1..5] of Integer;
var apuesta : array[1..5] of Integer;


procedure registracion; // --- REGISTRACIÓN ---
  BEGIN
     writeln('Bienvenido/s al juego de la ruleta!');
     writeln();
     writeln('Ingrese el numero de participantes que jugaran(Maximo 5): ');
     readln(jugadores);
     WHILE (jugadores < 1) OR (jugadores > 5) DO
       BEGIN
          ClrScr;
          writeln('Lo siento, el numero de participantes debe ser entre 1 y 5.');
          readln(jugadores);
       END;

     FOR i:=1 TO jugadores DO // Les cargo 100 de saldo a los jugadores que paricipan.
          saldo[i] := 100;
  END;


procedure mostrarRuleta; // --- MUESTRA RULETA --- //
  BEGIN
     writeln('Esta es la ruleta, los numeros estan distribuidos en 12 filas y 3 columnas:');
     writeln('                     ');
     writeln('       (1)(2)(3)     ');
     writeln('(1)-->[ 01-02-03 ]   ');
     writeln('(2)-->[ 04-05-06 ]   ');
     writeln('(3)-->[ 07-08-09 ]   ');
     writeln('(4)-->[ 10-11-12 ]   ');
     writeln('(5)-->[ 13-14-15 ]   ');
     writeln('(6)-->[ 16-17-18 ]   ');
     writeln('(7)-->[ 19-20-21 ]   ');
     writeln('(8)-->[ 22-23-24 ]   ');
     writeln('(9)-->[ 25-26-27 ]   ');
     writeln('(10)->[ 28-29-30 ]   ');
     writeln('(11)->[ 31-32-33 ]   ');
     writeln('(12)->[ 34-35-36 ]   ');
     writeln('                     ');
  END;


procedure apuestaParImpar; // --- APUESTA PAR O IMPAR --- ( 1 )
  BEGIN
     writeln('Selecione Par:(0) o Impar:(1): ');
     readln(rta);
     WHILE (rta < 0) OR (rta > 1) DO
       BEGIN
          writeln('Error. Debe selecionar Par:(0) o Impar:(1).');
          readln(rta);
       END;

     apuesta[activo] := rta;

  END;


PROCEDURE  apuestaColumna; // --- APUESTA COLUMNA --- ( 2 )
  BEGIN
     writeln('Seleccione una columna del 1 al 3:');
     readln(rta);
     WHILE (rta < 1) or (rta > 3) DO
       BEGIN
           writeln('Error. Debe escribir un número entre 1 y 3.');
           readln(rta)
       END;

     apuesta[activo] := rta;

  END;


PROCEDURE apuestaFila; // --- APUESTA FILA --- ( 3 )
  BEGIN
     writeln('Seleccione una fila del 1 al 12:');
     readln(rta);
     WHILE (rta < 1) OR (rta > 12) DO
       BEGIN
           writeln('Error. Debe elegir un numero entre 1 y 12.');
           readln (rta);
       END;

     apuesta[activo] := rta;

  END;


procedure apuestaPleno; // --- APUESTA PLENO ---
  BEGIN
     writeln('Le gusta apostar en grande... elija un numero del 1 al 36:');
     readln(rta);
     WHILE (rta < 1) OR (rta > 36) DO
       BEGIN
          writeln('Error. Debe selecionar un número entre 1 y 36.');
          readln(rta);
       END;

     apuesta[activo] := rta;

  END;


procedure tipoApuesta; // --- ELECCIÓN APUESTA ---
  BEGIN
     writeln('Es el turno del jugador ', activo, '.');
     writeln('Su saldo es de > $', saldo[activo], ' <.');
     writeln();
     writeln('Seleccione su tipo de apuesta:');
     writeln();
     writeln('[1] Par-Impar (x 2).');
     writeln('[2] Columna   (x 3).');
     writeln('[3] Fila      (x12).');
     writeln('[4] Pleno     (x36).');
     writeln();

     readln(rta);
     WHILE (rta < 1) OR (rta > 4) DO
       BEGIN
          writeln('Error. Debe elegir un número entre 1 y 4.');
          readln(rta);
       END;
     writeln();

     CASE rta OF
          1: tipo := 2;
          2: tipo := 3;
          3: tipo := 12;
          4: tipo := 36;
     END;

     CASE tipo OF
           2: apuestaParImpar;
           3: apuestaColumna ;
          12: apuestaFila    ;
          36: apuestaPleno   ;
     END;
     writeln();
     writeln();
  END;


procedure eleccionMonto; // --- ELECCIÓN MONTO --- //
  BEGIN
     writeln('Ingrese el monto que desea apostar:');
     readln(monto[activo]);
     WHILE (monto[activo] < 0) OR (monto[activo] > saldo[activo]) DO
       BEGIN
         writeln('Error. El numero debe ser mayor a 0 y menor a ', saldo[activo]);
         readln(monto[activo]);
       END;
  END;


procedure mostrarResultado; // --- RESULTADOS --- //
  BEGIN

     randomize;                // Elige un resultado al azar.
     resultado := random(37);

     FOR i:= 1 TO jugadores DO
       BEGIN

          ganador := False;

          CASE tipo OF

               2: // ( Par o Impar )
                 BEGIN
                    IF (resultado mod 2 = apuesta[activo]) THEN
                         ganador := True;
                 END;

               3: // ( Columna )
                 BEGIN
                    FOR i := 0 TO 11 DO
                      BEGIN
                         IF (apuesta[activo] + i*3 = resultado) THEN
                              ganador := True;
                      END;
                 END;

               12: // ( Fila )
                 BEGIN
                    IF (resultado > ((apuesta[activo]-1)*3)) AND (resultado <= (apuesta[activo]*3)) THEN
                         ganador := True;
                 END;

               36: // ( Pleno )
                 BEGIN
                    IF (resultado = apuesta[activo]) THEN
                         ganador := True;
                 END;

          END; // Termina el Case.


          writeln();
          writeln('--- EL NUMERO ES ', resultado, ' ---');
          writeln();

               IF ganador THEN
                 BEGIN
                    
                    writeln('El jugador ', activo, ' acerto!');
                    saldo[activo] := saldo[activo] + monto[activo] * tipo;
                 END
               ELSE
                 BEGIN
                    writeln('El jugador ', activo, ' NO acerto!');
                    saldo[activo] := saldo[activo] - monto[activo];
                 END;

               writeln('Su saldo ahora es de $', saldo[activo]);
               writeln();
               writeln();
               writeln('* Presione alguna tecla para continuar *');
               readkey();
       END; // Termina el FOR.
  END; // Termina el Procedure


BEGIN // [-- -- MAIN -- --] //

     registracion; // Pregunta cantidad de jugadores
     clrScr;
     mostrarRuleta;

     campeon := 0;
     vuelta  := 1;
     WHILE (vuelta < 10) and (campeon = 0) DO
       BEGIN
          FOR activo:=1 TO jugadores DO
            BEGIN
               tipoApuesta;
               eleccionMonto;

               IF (saldo[activo] >= 200) THEN
                    campeon := activo;
            END;
          clrScr;
          mostrarResultado;
          clrScr;
          mostrarRuleta;

          vuelta := vuelta +1;
       END;


     IF (vuelta = 10) THEN
       BEGIN
          FOR i := 1 TO jugadores DO
            BEGIN
               IF saldo[i] > campeon THEN
                    campeon := i;
            END;
       END;

     writeln('El jugador ', campeon, ' ganó la partida. Qué lástima que no sea plata de verdad...');
     writeln();
     FOR i := 1 TO jugadores DO
          writeln('El jugador ', i, ' termino con $', saldo[i],'.');


     readkey();
END.
