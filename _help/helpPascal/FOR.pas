var  i : Integer;

BEGIN

    FOR i:=0 TO 10 DO
      BEGIN
        write('Voy por el ');
        writeln(i); // Punto y coma opcional
      END;

    FOR i:=5 DOWNTO 0 DO // Con una sola linea no necesita  BEGIN ni END
        writeln(i);

    readln();
END.
