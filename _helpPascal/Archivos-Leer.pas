program ArchivosLeer;
uses crt;

TYPE testeo = RECORD
                   var1: integer;
                   var2: string[20];
              END;

VAR
   aT: FILE OF testeo;
   rT: testeo;
begin
     assign(aT, 'H:\GitProgramming\_helpPascal\archivo.dat');
     reset(aT); // Pone el puntero en 0
     read(aT, rT); //Trae del HDD a la RAM el contenido de aT en la posici�n del puntero y lo deja en rT. Y avanza el puntero una posici�n.
     writeln(rT.var1);
     writeln(rT.var2);
     read(aT, rT);
     writeln(rT.var1);
     writeln(rT.var2);
     read(aT, rT);
     writeln(rT.var1);
     writeln(rT.var2);

     writeln();
     seek(aT, 1); // Lleva el puntero a la posici�n que le digas del archivo aT. (Los archivos comienzan con la posici�n 0)
     read(aT, rT);
     writeln(rT.var1);
     writeln(rT.var2);
                         
     close(aT);
     readkey();
end.
