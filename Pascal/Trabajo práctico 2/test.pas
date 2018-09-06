program nalb;
uses crt;
type
jug1=array[1..3 , 1..3] of integer;

var
a:jug1;

u:real;
nom1,nom2,trat1,trat2,pretuto:string;
gano,jug,sig1,sig2,i,j,k,m,con,c,c2,x,y,turno,cont,tuto,banem,h:integer;
voc1,sexo2,sexo1:char;
begin
c:=0;
c2:=0;
tuto:=0;
cont:=0;
banem:=0;
     randomize;
     repeat
     u:=Random;
     if u<0.5
     then
     con:=1
     else
     if u>0.5
     then con:=2;
     until u<>0.5;

gano:=0;
turno:=0;

for i:= 10 to 11 do
        for j:= 5 to 30 do
            begin

            clrscr;

gotoxy (15,10); textcolor (i); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy (15,11);textcolor (i); write ('บ             ');
gotoxy (50,11);textcolor (i); writeln('           บ');
gotoxy (15,12);textcolor (i); write ('บ     ');
gotoxy (55,12);textcolor (i); writeln('      บ');
gotoxy (15,13);textcolor (i); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออผ');
       textcolor (j);

    gotoxy (17,11); writeln ('BIENVENIDOS AL FABULOSO JUEGO DEL TA-TE-TI');
    gotoxy (17,12); writeln ('         created by Blankito, Mati, Ever');
       delay(150);
              end;
  clrscr;
  repeat
textbackground (2);
gotoxy(10,08); textcolor (14); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy(10,09); textcolor (14); write ('บ  '); textcolor (12); write ('         Desea ver el Tutorial del JUEGO? '); textcolor (14); writeln('             บ');
gotoxy(10,10); textcolor (14); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy(10,11); textbackground (8); textcolor (14); readln (pretuto);
until (pretuto='Si') or (pretuto='si') or (pretuto='SI') or (pretuto='s') or (pretuto='No') or (pretuto='no') or (pretuto='No') or (pretuto='n');

if (pretuto='Si') or (pretuto='si') or (pretuto='SI') or (pretuto='s') then
   tuto:=1
   else
   tuto:=0;

   clrscr;
  while (tuto = 1) and (cont <= 2) do
begin

textbackground (1);
textcolor (10);
gotoxy (35,03); writeln ('1');
gotoxy (54,03); writeln ('2');
gotoxy (71,03); writeln ('3');
gotoxy (24,06); writeln ('1');
gotoxy (24,13); writeln ('2');
gotoxy (24,20); writeln ('3');

textcolor (12);
gotoxy(25,04); writeln ('                  บ                  บ                  ');
delay (250);
gotoxy(25,05); writeln ('                  บ                  บ                  ');
delay (255);             
gotoxy(25,06); writeln ('                  บ                  บ                  ');
delay (260);
gotoxy(25,07); writeln ('                  บ                  บ                  ');
delay (265);
gotoxy(25,08); writeln ('                  บ                  บ                  ');
delay (270);
gotoxy(25,09); writeln ('                  บ                  บ                  ');
delay (275);
gotoxy(25,10); writeln ('ออออออออออออออออออฮออออออออออออออออออฮออออออออออออออออออ');
delay (280);
gotoxy(25,11); writeln ('                  บ                  บ                  ');
delay (285);
gotoxy(25,12); writeln ('                  บ                  บ                  ');
delay (290);
gotoxy(25,13); writeln ('                  บ                  บ                  ');
delay (295);
gotoxy(25,14); writeln ('                  บ                  บ                  ');
delay (295);
gotoxy(25,15); writeln ('                  บ                  บ                  ');
delay (290);
gotoxy(25,16); writeln ('                  บ                  บ                  ');
delay (285);
gotoxy(25,17); writeln ('ออออออออออออออออออฮออออออออออออออออออฮออออออออออออออออออ');
delay (280);
gotoxy(25,18); writeln ('                  บ                  บ                  ');
delay (275);
gotoxy(25,19); writeln ('                  บ                  บ                  ');
delay (270);             
gotoxy(25,20); writeln ('                  บ                  บ                  ');
delay (100);
gotoxy(25,21); writeln ('                  บ                  บ                  ');
delay (150);
gotoxy(25,22); writeln ('                  บ                  บ                  ');
delay (100);
gotoxy(25,23); writeln ('                  บ                  บ                  ');

textcolor (14);
gotoxy (33,03); writeln ('-',chr(16));
delay (2000);
gotoxy (28,01); writeln ('En primer lugar, debe elegir la posicion');
delay (250);
gotoxy (28,02); writeln ('de los numeros del 1 al 3               ');
delay (500);
gotoxy (22,06); writeln ('-',chr(16));
delay (500);
gotoxy (0,08); writeln ('Las coordenadas       ');
delay (500);
gotoxy (0,9); writeln ('se ingresan           ');
delay (500);
gotoxy (0,10); writeln ('con un ENTER          ');
delay (500);
gotoxy (0,11); writeln ('de por medio.         ');
delay (500);
gotoxy (0,12); writeln ('Luego debe elegir la  ');
delay (500);
gotoxy (0,13); writeln ('coordenada de         ');
delay (500);
gotoxy (0,14); writeln ('la segundo posicion.  ');
delay (500);



            textcolor (12);

          gotoxy (29,4); writeln (' ฒฒ    ฒฒ ');
          delay (800);
          gotoxy (29,5); writeln ('  ฒฒ  ฒฒ  ');
          delay (800);
          gotoxy (29,6); writeln ('   ฒฒฒฒ   ');
          delay (800);
          gotoxy (29,7); writeln ('   ฒฒฒฒ   ');
          delay (800);
          gotoxy (29,8); writeln ('  ฒฒ  ฒฒ  ');
          delay (800);
          gotoxy (29,9); writeln (' ฒฒ    ฒฒ ');


cont:=cont +1;






end;

       repeat
  textbackground (8);
       clrscr;

gotoxy(10,08); textcolor (10); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy(10,09); textcolor (10); write ('บ  '); textcolor (11); write ('Ingrese sexo del 1er jugador: Femenino=F / Masculino=M'); textcolor (10); writeln(' บ');
gotoxy(10,10); textcolor (10); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy(10,11); textcolor (12); readln (sexo1);
clrscr;
until (sexo1='F') or (sexo1='f') or (sexo1='m') or (sexo1='M');


if (sexo1='f') or (sexo1='F')

      then
   begin
      trat1:='sra.';
      voc1:='a';
      sig1:=12
   end
      else
      begin
      trat1:='sr.';
      voc1:='o';
      sig1:=11
      end;





clrscr;
gotoxy (15,08); textcolor (10); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy (15,09); textcolor (10); write ('บ ');
gotoxy (59,09); textcolor (10); writeln('  บ');
gotoxy (15,10); textcolor (10); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy (23,09); textcolor (11); write (trat1,'Ingrese nombre del 1er jugador');
gotoxy (15,11); textcolor (12); readln (nom1);
clrscr;

repeat
gotoxy(10,08); textcolor (13); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy(10,09); textcolor (13); write ('บ  '); textcolor (11); write ('Ingrese sexo del 2do jugador: Femenino=F / Masculino=M'); textcolor (13); writeln(' บ');
gotoxy(10,10); textcolor (13); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy(10,11); textcolor (14); readln (sexo2);
clrscr;
until (sexo2='F') or (sexo2='f') or (sexo2='m') or (sexo2='M');

if (sexo2='f') or (sexo2='F')

      then
   begin
      trat2:='sra.';
      sig2:=12
   end
      else
      begin
      trat2:='sr.';
      sig2:=11
      end;



clrscr;
gotoxy (15,08); textcolor (13); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy (15,09); textcolor (13); write ('บ ');
gotoxy (59,09); textcolor (13); writeln('  บ');
gotoxy (15,10); textcolor (13); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy (23,09); textcolor (11); write (trat2,'Ingrese nombre del 2do jugador');
gotoxy (15,11); textcolor (14); readln (nom2);

clrscr;
textbackground (2);
gotoxy (15,08); textcolor (14); writeln ('ษอออออออออออออออออออออออออออออออออออออออออออออป');
gotoxy (15,09); textcolor (14); write ('บ             ');
gotoxy (50,09); textcolor (14); writeln('           บ');
gotoxy (15,10); textcolor (14); write ('บ     ');
gotoxy (55,10); textcolor (14); writeln('      บ');
gotoxy (15,11); textcolor (14); writeln ('ศอออออออออออออออออออออออออออออออออออออออออออออผ');
gotoxy (22,09); textcolor (13); write ('Bienvenid',voc1,' ',trat1,' ',nom1,' y ',trat2,' ',nom2);
gotoxy (21,10); textcolor (13); write (' Tecleen la tecla ENTER para jugar ');
gotoxy (15,12); textcolor (12); readln;
textbackground (8);

textcolor (7);
clrscr;
textbackground (1);
gotoxy (35,03); writeln ('1');
gotoxy (54,03); writeln ('2');
gotoxy (71,03); writeln ('3');
gotoxy (24,06); writeln ('1');
gotoxy (24,13); writeln ('2');
gotoxy (24,20); writeln ('3');

gotoxy(25,04); writeln ('                  บ                  บ                  ');
delay (250);
gotoxy(25,05); writeln ('                  บ                  บ                  ');
delay (255);             
gotoxy(25,06); writeln ('                  บ                  บ                  ');
delay (260);
gotoxy(25,07); writeln ('                  บ                  บ                  ');
delay (265);
gotoxy(25,08); writeln ('                  บ                  บ                  ');
delay (270);
gotoxy(25,09); writeln ('                  บ                  บ                  ');
delay (275);
gotoxy(25,10); writeln ('ออออออออออออออออออฮออออออออออออออออออฮออออออออออออออออออ');
delay (280);
gotoxy(25,11); writeln ('                  บ                  บ                  ');
delay (285);
gotoxy(25,12); writeln ('                  บ                  บ                  ');
delay (290);
gotoxy(25,13); writeln ('                  บ                  บ                  ');
delay (295);
gotoxy(25,14); writeln ('                  บ                  บ                  ');
delay (295);
gotoxy(25,15); writeln ('                  บ                  บ                  ');
delay (290);
gotoxy(25,16); writeln ('                  บ                  บ                  ');
delay (285);
gotoxy(25,17); writeln ('ออออออออออออออออออฮออออออออออออออออออฮออออออออออออออออออ');
delay (280);
gotoxy(25,18); writeln ('                  บ                  บ                  ');
delay (275);
gotoxy(25,19); writeln ('                  บ                  บ                  ');
delay (270);             
gotoxy(25,20); writeln ('                  บ                  บ                  ');
delay (100);
gotoxy(25,21); writeln ('                  บ                  บ                  ');
delay (150);
gotoxy(25,22); writeln ('                  บ                  บ                  ');
delay (100);
gotoxy(25,23); writeln ('                  บ                  บ                  ');

textcolor (9);
gotoxy (21,01); writeln ('Û');
gotoxy (21,02); writeln ('Û');
gotoxy (21,03); writeln ('Û');
gotoxy (21,04); writeln ('Û');
gotoxy (21,05); writeln ('Û');
gotoxy (21,06); writeln ('Û');
gotoxy (21,07); writeln ('Û');
gotoxy (21,08); writeln ('Û');
gotoxy (21,09); writeln ('Û');
gotoxy (21,10); writeln ('Û');
gotoxy (21,11); writeln ('Û');
gotoxy (21,12); writeln ('Û');
gotoxy (21,13); writeln ('Û');
gotoxy (21,14); writeln ('Û');
gotoxy (21,15); writeln ('Û');
gotoxy (21,16); writeln ('Û');
gotoxy (21,17); writeln ('Û');
gotoxy (21,18); writeln ('Û');
gotoxy (21,19); writeln ('Û');
gotoxy (21,20); writeln ('Û');
gotoxy (21,21); writeln ('Û');
gotoxy (21,22); writeln ('Û');
gotoxy (21,23); writeln ('Û');
gotoxy (21,24); writeln ('Û');

textbackground (8);

for k:= 1 to 3 do
    for m:= 1 to 3 do
    a[k,m]:=0;

 repeat
 if con=1 then
    begin
         repeat
               repeat
c:=c+1;

textcolor (13);
gotoxy (1,3); writeln ('ingrese su jugada');
gotoxy (1,4); writeln (nom1,' ',chr(sig1));
gotoxy (1,6); read (k,m);
until ( (k=1) or (k=2) or (k=3) and (m=1) or (m=2) or (m=3) );
until a[k,m]=0;

      case k of
       1: x:= 30;
       2: x:= 48;
       3: x:= 66;
       end;

       case m of
       1: y:=4;
       2: y:=11;
       3: y:=18;
       end;





          a[k,m]:=1;
          textbackground (1);
          textcolor (13);
          gotoxy (x,y); writeln (' ฒฒ    ฒฒ ');
          gotoxy (x,y+1); writeln ('  ฒฒ  ฒฒ  ');
          gotoxy (x,y+2); writeln ('   ฒฒฒฒ   ');
          gotoxy (x,y+3); writeln ('   ฒฒฒฒ   ');
          gotoxy (x,y+4); writeln ('  ฒฒ  ฒฒ  ');
          gotoxy (x,y+5); writeln (' ฒฒ    ฒฒ ');
          textcolor (12);
          textbackground (8);
          con:=2;
        end
           else

           begin
                repeat
                      repeat
                      c2:=c2+1;
                      textcolor (12);
                      gotoxy (1,12); writeln ('ingrese su jugada');
                      gotoxy (1,13); writeln (nom2,' ',chr(sig2));
                      gotoxy (1,15); readln (k,m);

                      until ( (k=1) or (k=2) or (k=3) and (m=1) or (m=2) or (m=3) );
                      until a[k,m]=0;
                      a[k,m]:=2;

       case k of
       1: x:= 30;
       2: x:= 48;
       3: x:= 66;
       end;

       case m of
       1: y:=4;
       2: y:=11;
       3: y:=18;
       end;
          textcolor (12);
          textbackground (1);
         gotoxy (x,y);writeln ('    ฒฒฒ    ');
          gotoxy (x,y+1);writeln ('  ฒฒ   ฒฒ  ');
          gotoxy (x,y+2);writeln (' ฒฒ     ฒฒ ');
          gotoxy (x,y+3);writeln (' ฒฒ     ฒฒ ');
          gotoxy (x,y+4);writeln ('  ฒฒ   ฒฒ  ');
          gotoxy (x,y+5);writeln ('    ฒฒฒ    ');
          textcolor (13);
          con:=1;
          textbackground (8);
          end;



         for k:=1 TO 3 DO
         if (a[k,1]=a[k,2])and(a[k,1]=a[k,3]) and ((a[k,1]<>0) and (a[k,2]<>0) and (a[k,3] <>0))
            then gano:=1;
     for m:=1 TO 3 DO
         if (a[1,m]=a[2,m])and(a[1,m]=a[3,m])and ((a[1,m]<>0) and (a[2,m]<>0) and (a[3,m] <>0))
            then gano:=1;
     if (a[1,1]=a[2,2])and(a[1,1]=a[3,3])and ((a[1,1]<>0) and (a[2,2]<>0) and (a[3,3] <>0))
        then gano:=1;
     if (a[1,3]=a[2,2])and(a[1,3]=a[3,1])and ((a[3,1]<>0) and (a[2,2]<>0) and (a[1,3] <>0))
        then gano:=1;
     turno:=turno+1


     until (gano=1) or (turno=9);
     clrscr;
     gotoxy(30,15);
     if gano=1
        then
            begin
            for k:=1 TO 3 DO
                if (a[k,1]=1) and (a[k,2]=1) and (a[k,3]=1)
                       then jug:=1;
                for m:=1 TO 3 DO
                    if (a[1,m]=1) and (a[2,m]=1) and (a[3,m]=1)
                       then jug:=1;
                if (a[1,1]=1) and (a[2,2]=1) and (a[3,3]=1)
                   then jug:=1;
                if (a[3,1]=1) and (a[2,2]=1) and (a[1,3]=1)
                   then jug:=1;
                for k:=1 TO 3 DO
                    if (a[k,1]=2) and (a[k,2]=2) and (a[k,3]=2)
                       then jug:=2;
                for m:=1 TO 3 DO
                    if (a[1,m]=2) and (a[2,m]=2) and (a[3,m]=2)
                       then jug:=2;
                if (a[1,1]=2) and (a[2,2]=2) and (a[3,3]=2)
                   then jug:=1;
                if (a[3,1]=2) and (a[2,2]=2) and (a[1,3]=2)
                   then jug:=2;

                case jug of
                0: banem:=1;
                1: begin
                                               for i:= 1 to 10 do
begin
clrscr;
textcolor (i);
gotoxy (5,  i); writeln (' ฒฒ     ฒฒ           G A N O  :',nom1);
gotoxy (5,i+1); writeln ('ฒ    ฒ    ฒ           W I N   :',nom1);
gotoxy (5,i+2); writeln ('                     G A N O  :',nom1);
gotoxy (5,i+3); writeln ('   ฒ   ฒ              W I N   :',nom1);
gotoxy (5,i+4); writeln ('    ฒฒฒ              G A N O  :',nom1);
delay (76);
end;

for j:= 1 to 10 do
begin
clrscr;
textcolor (j);
gotoxy (j+5,10); writeln (' ฒฒ     ฒฒ           G A N O  :',nom1);
gotoxy (j+5,11); writeln ('ฒ    ฒ    ฒ           W I N   :',nom1);
gotoxy (j+5,12); writeln ('                     G A N O  :',nom1);
gotoxy (j+5,13); writeln ('   ฒ   ฒ              W I N   :',nom1);
gotoxy (j+5,14); writeln ('    ฒฒฒ              G A N O  :',nom1);
delay (76);

end;
                   end;
                2: begin
                       for i:= 1 to 10 do
begin
clrscr;
textcolor (i);
gotoxy (5,  i); writeln (' ฒฒ     ฒฒ           G A N O  :',nom2);
gotoxy (5,i+1); writeln ('ฒ    ฒ    ฒ           W I N   :',nom2);
gotoxy (5,i+2); writeln ('                     G A N O  :',nom2);
gotoxy (5,i+3); writeln ('   ฒ   ฒ              W I N   :',nom2);
gotoxy (5,i+4); writeln ('    ฒฒฒ              G A N O  :',nom2);
delay (76);
end;

for j:= 1 to 10 do
begin
clrscr;
textcolor (j);
gotoxy (j+5,10); writeln (' ฒฒ     ฒฒ           G A N O  :',nom2);
gotoxy (j+5,11); writeln ('ฒ    ฒ    ฒ           W I N   :',nom2);
gotoxy (j+5,12); writeln ('                     G A N O  :',nom2);
gotoxy (j+5,13); writeln ('   ฒ   ฒ              W I N   :',nom2);
gotoxy (j+5,14); writeln ('    ฒฒฒ              G A N O  :',nom2);
delay (76);

end;
                   end
                end

           end

        else begin
        banem:=1;
            while banem = 1do
            for h:= 1 to 10 do
begin
clrscr;
textcolor (h);
gotoxy (5,h); writeln   (' ฒฒ     ฒฒ         EMPATE -');
gotoxy (5,h+1); writeln ('     ฒ               TIE  -');
gotoxy (5,h+2); writeln ('                   EMPATE -');
gotoxy (5,h+3); writeln ('    ฒฒฒ              TIE  -');
gotoxy (5,h+4); writeln ('   ฒ   ฒ           EMPATE -');
delay (100);
banem:=2;
 end;
end;

repeat until keypressed;
end.
