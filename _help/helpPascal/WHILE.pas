var a,b : integer;

BEGIN
     a := 0;
     b := 0;
     WHILE a<10 DO
       BEGIN
           writeln(a);
           a := a+1; // Punto y coma opcional.
       END;

     WHILE (a<20) or (a<30) DO  // Par�ntesis obligatorios
       BEGIN
           writeln(a);
           a := a+1;
       END;

     readln();
END.
