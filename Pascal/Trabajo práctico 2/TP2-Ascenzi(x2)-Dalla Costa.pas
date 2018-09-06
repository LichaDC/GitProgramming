program TP2;
uses crt;
var i, j, eleccion, numero, jugadores, rta, activo, tipo, resultado, vuelta, campeon: Integer;
var perdedor : Boolean;
var empate   : Boolean;
var ganador : array[1..4] of Boolean;
var binario : array[1..4,1..4] of Integer;
var num     : array[1..4] of Integer;
var decimal : array[1..4] of Integer;
var saldo   : array[1..5] of Integer;
var monto   : array[1..5] of Integer;
var apuesta : array[1..5] of Integer;

// INICIO PROCEDIMIENTOS DE RULETA //

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
     writeln('                                                                 ');
     writeln('     (01) (02) (03) (04) (05) (06) (07) (08) (09) (10) (11) (12) ');
     writeln('                                                                 ');
     writeln('(1)  [01] [04] [07] [10] [13] [16] [19] [22] [25] [28] [31] [34] ');
     writeln('(2)  [02] [05] [08] [11] [14] [17] [20] [23] [26] [29] [32] [35] ');
     writeln('(3)  [03] [06] [09] [12] [15] [18] [21] [24] [27] [30] [33] [36] ');
     writeln('                                                                 ');
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


PROCEDURE  apuestaFila; // --- APUESTA FILA --- ( 2 )
  BEGIN
     writeln('Seleccione una fila del 1 al 3:');
     readln(rta);
     WHILE (rta < 1) or (rta > 3) DO
       BEGIN
           writeln('Error. Debe escribir un número entre 1 y 3.');
           readln(rta)
       END;

     apuesta[activo] := rta;

  END;


PROCEDURE apuestaColumna; // --- APUESTA COLUMNA --- ( 3 )
  BEGIN
     writeln('Seleccione una columna del 1 al 12:');
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
     writeln('[2] Fila      (x 3).');
     writeln('[3] Columna   (x12).');
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
           3: apuestaFila ;
          12: apuestaColumna    ;
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
     saldo[activo] := saldo[activo] - monto[activo];
  END;


procedure tirarBolita; // --- TIRAR BOLITA --- //
  BEGIN
     randomize;                // Elige un resultado al azar.
     resultado := random(37);
  END;


procedure compararResultado; // --- COMPARAR RESULTADOS --- //
  BEGIN
     FOR i := 1 TO jugadores DO
       BEGIN
          ganador[i] := False;
          CASE tipo OF

               2: // ( Par o Impar )
                 BEGIN
                    IF (resultado mod 2 = apuesta[i]) THEN
                         ganador[i] := True;
                 END;

               3: // ( Fila )
                 BEGIN
                    FOR i := 0 TO 11 DO
                      BEGIN
                         IF (apuesta[i] + i*3 = resultado) THEN
                              ganador[i] := True;
                      END;
                 END;

               12: // ( Columna )
                 BEGIN
                    IF (resultado > ((apuesta[i]-1)*3)) AND (resultado <= (apuesta[i]*3)) THEN
                         ganador[i] := True;
                 END;

               36: // ( Pleno )
                 BEGIN
                    IF (resultado = apuesta[i]) THEN
                         ganador[i] := True;
                 END;
        END; // Termina el case.
     END; // Termina el For.
  END;

procedure mostrarResultado; // --- MOSTRAR RESULTADOS --- //
  BEGIN
     writeln();
     writeln('--- EL NUMERO ES ', resultado, ' ---');
     writeln();

     FOR i := 1 TO jugadores DO
       BEGIN
          IF ganador[i] THEN
            BEGIN
               writeln('El jugador ', i, ' acerto!');
               saldo[i] := saldo[i] + monto[i] * tipo;
            END
          ELSE
            BEGIN
               writeln('El jugador ', i, ' NO acerto!');
            END;
          writeln('Su saldo ahora es de $', saldo[i]);
          writeln();
          writeln();
       END;

     writeln('* Presione alguna tecla para continuar *');
     readkey();
  END;


procedure Ruleta; // -- MAIN RULETA -- //
  BEGIN
     registracion; // Pregunta cantidad de jugadores
     perdedor := True; // Var que corrobora que nadie tenga saldo 0 o menos
     campeon := 0; // Var que corrobora si alguien superó los 200
     vuelta  := 1;
     WHILE (vuelta < 10) and (campeon = 0) and (perdedor) DO
       BEGIN
          FOR activo:=1 TO jugadores DO
            BEGIN
               clrScr;
               mostrarRuleta;
               tipoApuesta;
               eleccionMonto;
               tirarBolita;
               IF (saldo[activo] >= 200) THEN
                    campeon := activo;
               IF (saldo[activo] <= 0) THEN
                    perdedor := False;
            END;
          clrScr;
          compararResultado;
          mostrarResultado;

          vuelta := vuelta +1;
       END;

     clrScr;

     FOR i := 1 TO jugadores DO
       BEGIN
          IF saldo[i] > saldo[campeon] THEN
               campeon := i;
       END;

     FOR i := 1 TO jugadores DO
       BEGIN
          IF saldo[i] = saldo[campeon] THEN
               empate := True;
       END;

     IF empate THEN
       BEGIN
          writeln('Hubo un empate');
       END
     ELSE
          writeln('El jugador ', campeon, ' gano la partida. Que lastima que no sea plata de verdad...');
     writeln();
     writeln();
     FOR i := 1 TO jugadores DO
          writeln('El jugador ', i, ' termino con $', saldo[i],'.');


     readkey();
END;

// FIN PROCEDIMIENTOS DE RULETA //


Procedure NumeroTexto;
  BEGIN
     writeln('Escribi un numero entero y lo convertire en texto.');
     readln(numero);
     WHILE (numero < 0) or (numero > 9999) DO
       BEGIN
          writeln('Numero invalido, ingrese un valor entre 0 y 9999');
          readln(numero);
       END;

     num[1] := numero MOD 10;                              // Unidades
     num[2] := numero MOD 100  - num[1];                   // Decenas
     num[3] := numero MOD 1000 - num[1] - num[2];          // Centenas
     num[4] := numero          - num[1] - num[2] - num[3]; // Milenas

     CASE num[4] OF
          1000: write('Mil '       );
          2000: write('Dos mil '   );
          3000: write('Tres mil'   );
          4000: write('Cuatro mil ');
          5000: write('Cinco mil ' );
          6000: write('Seis mil '  );
          7000: write('Siete mil ' );
          8000: write('Ocho mil '  );
          9000: write('Nueve mil ' );
     END;

     CASE num[3] OF
          100:
            BEGIN
               IF (num[2] = 0) and (num[1] = 0) THEN
                 BEGIN
                    write('Cien'     );
                 END
               ELSE
                    write('Ciento '  );
            END;
          200: write('Doscientos '   );
          300: write('Trescientos '  );
          400: write('Cuatrocientos ');
          500: write('Quinientos '   );
          600: write('Seiscientos '  );
          700: write('Setecientos '  );
          800: write('Ochocientos '  );
          900: write('Novecientos '  );
     END;

     CASE num[2] OF
          10:
            BEGIN
               IF num[1] > 5 THEN
                 BEGIN
                   write('dieci');
                 END
               ELSE
                 BEGIN
                    CASE num[1] OF
                         0: write('Diez'   );
                         1: write('Once'   );
                         2: write('Doce'   );
                         3: write('Trece'  );
                         4: write('Catorce');
                         5: write('Quince' );
                    END;
                 END;
            END;
          20:
            BEGIN
              IF num[1] = 0 THEN
                BEGIN
              write('Veinte');
                END
              ELSE write('Veinti'    );
            END;
          30: write('Treinta '  );
          40: write('Cuarenta ' );
          50: write('Cincuenta ');
          60: write('Sesenta '  );
          70: write('Setenta '  );
          80: write('Ochenta '  );
          90: write('Noventa '  );
     END;
     IF  (num[2] >=30) and (num[1] <> 0) THEN
         write('y ');

     CASE num[1] OF
          1: IF num[2] <> 10 THEN write('uno'   );
          2: IF num[2] <> 10 THEN write('dos'   );
          3: IF num[2] <> 10 THEN write('tres'  );
          4: IF num[2] <> 10 THEN write('cuatro');
          5: IF num[2] <> 10 THEN write('cinco' );
          6: write('seis' );
          7: write('siete');
          8: write('ocho' );
          9: write('nueve');
     END;
  END;


Procedure Codigo;
  BEGIN
     writeln('Escribi un numero de 4 digitos para que lo convierta en QR');
     readln(numero);
     WHILE (numero < 0) or (numero > 10000) DO
       BEGIN
          writeln('Numero invalido, ingrese un valor entre 0 y 9');
          readln(numero);
     END;

     decimal[1] := ord(numero div 1000);
     decimal[2] := ord(numero div 100 )-decimal[1]*10;
     decimal[3] := ord(numero div 10  )-decimal[1]*100 -decimal[2]*10;
     decimal[4] := ord(numero div 1   )-decimal[1]*1000-decimal[2]*100-decimal[3]*10;

     FOR i:= 1 TO 4 DO
       BEGIN
          FOR j:= 1 TO 4 DO
            BEGIN
               binario[i][j] := decimal[i] MOD 2;
               decimal[i]    := decimal[i] DIV 2;
            END;
       END;

     FOR i:= 1 TO 4 DO // MUESTRA EL QR
       BEGIN
          writeln('00'); // Numeros
          writeln('11'); // Constantes
          writeln(binario[i][4], binario[i][3]); // Números
          writeln(binario[i][2], binario[i][1]); // Binarios
       END;
  END;


BEGIN // [-- -- MAIN -- --] //

     REPEAT
          clrScr;
          writeln('1) Ruleta');
          writeln('2) Numero a texto');
          writeln('3) Codigo QR');
          writeln('4) Fin');

          readln(eleccion);
          WHILE (eleccion < 1) OR (eleccion > 4) DO
            BEGIN
               writeln('Valor invalido, intente de nuevo');
               readln(eleccion);
            END;
          clrscr;
          CASE eleccion OF
               1: Ruleta;
               2: NumeroTexto;
               3: Codigo;
          END;
          readkey();
      UNTIL (eleccion = 4);
END.
