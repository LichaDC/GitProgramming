program ArchivosGuardar;
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
     reset(aT);  // Poné el puntero en el punto 0 de ese archivo.
     // Si ioresult da 3 es porque la ruta está mal. Si da 2 es porque no existe el archivo.

     IF ioresult() = 2 THEN
          rewrite(aT); // Si el archivo no existe lo crea, y si existe lo borra y lo crea de nuevo.

     filesize(aT); // Devuelve el tamaño del archivo.


     rT.var1 := 10;
     rT.var2 := 'Hola';
     write(aT, rT);
     rT.var1 := 20;
     rT.var2 := 'Ketal';
     write(aT, rT);
     rT.var1 := 30;
     rT.var2 := 'Chau';
     write(aT, rT);
     rT.var1 := 40;
     rT.var2 := 'Byebye';
     write(aT, rT);
                         
     close(aT);
     readkey();
end.
