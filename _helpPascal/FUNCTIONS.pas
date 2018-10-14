program pedir;
uses crt;

var respuesta: string;

FUNCTION pedirStr(str: string): string;
  BEGIN
       write(str, ': ');
       readln(pedirStr);
  END;

// MAIN
BEGIN
     respuesta := pedirStr('Me decís tu nombre?');
     writeln('El Nombre es ', respuesta);
     readkey();
END.
