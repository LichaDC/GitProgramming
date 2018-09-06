var opcion: integer;
BEGIN

     CASE opcion OF
          1: writeln(1);
          2: writeln(2);
          3:
            BEGIN
               writeln('texto');
               writeln('más'  );
               writeln('Largo');
            END;
     END;

readln();
END.
