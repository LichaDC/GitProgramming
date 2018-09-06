Program ruleta;               //cambiar program por procedure.
uses crt;
Var tipo_apu1,tipo_apu2,tipo_apu3,tipo_apu4,tipo_apu5,valor_apu1,valor_apu2,valor_apu3,valor_apu4,valor_apu5:integer; //Se declaran las variables
    monto1,monto2,monto3,monto4,monto5,columna,fila,apu,pi,l,o,m,h,q,x,z,t,saldo1,saldo2,saldo3,saldo4,saldo5:integer;

const f1:array[1..3]of integer=(1,2,3);      //Se declaran las constantes
      f2:array[1..3]of integer=(4,5,6);
      f3:array[1..3]of integer=(7,8,9);
      f4:array[1..3]of integer=(10,11,12);
      f5:array[1..3]of integer=(13,14,15);
      f6:array[1..3]of integer=(16,17,18);
      f7:array[1..3]of integer=(19,20,21);
      f8:array[1..3]of integer=(22,23,24);
      f9:array[1..3]of integer=(25,26,27);
      f10:array[1..3]of integer=(28,29,30);
      f11:array[1..3]of integer=(31,32,33);
      f12:array[1..3]of integer=(34,35,36);
      col1:array[1..12]of integer=(1,4,7,10,13,16,19,22,25,28,31,34);
      col2:array[1..12]of integer=(2,5,8,11,14,17,20,23,26,29,32,35);
      col3:array[1..12]of integer=(3,6,9,12,15,18,21,24,27,30,33,36);
      par:array[1..18]of integer=(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36);
      imp:array[1..18]of integer=(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35);

procedure seteo_saldos;     //procedimiento de seteo de saldos
begin
saldo1:=0;
saldo2:=0;
saldo3:=0;
saldo4:=0;
saldo5:=0;
CASE q OF
         1:saldo1:=100;
         2:begin
           saldo1:=100;
           saldo2:=100;
           end;
         3:begin
           saldo1:=100;
           saldo2:=100;
           saldo3:=100;
           end;
         4:begin
           saldo1:=100;
           saldo2:=100;
           saldo3:=100;
           saldo4:=100;
           end;
         5:begin
           saldo1:=100;
           saldo2:=100;
           saldo3:=100;
           saldo4:=100;
           saldo5:=100;
           end;
 end;
end;

procedure registracion;    //procedimiento de registracion
begin
writeln('Bienvenido/s al juego de la ruleta!');
writeln('Ingrese el numero de participantes que jugaran(Maximo 5): ');
  repeat
   readln(q);
    if(q<1) and (q>5) then
     begin
     ClrScr;
     writeln('Lo siento,el numero de participantes debe ser entre 1 y 5.');
     end;
   until(q>0) and (q<6);
end;

procedure mostrar_ruleta;      //procedimiento de muestra de ruleta
begin
writeln('Esta es la ruleta,los numeros estan distribuidos en 12 filas y 3 columnas:');
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
writeln('                   ');
end;

procedure saldo;    //procedimiento de muestra de saldo
begin
 CASE q OF
         1:writeln('El saldo del jugador 1 es: ',saldo1,' Puntos');

         2:begin
           writeln('El saldo del jugador 1 es: ',saldo1,' Puntos');
           writeln('El saldo del jugador 2 es: ',saldo2,' Puntos');
           end;
                                                                        
         3:begin
           writeln('El saldo del jugador 1 es: ',saldo1,' Puntos');
           writeln('El saldo del jugador 2 es: ',saldo2,' Puntos');
           writeln('El saldo del jugador 3 es: ',saldo3,' Puntos');
           end;
                                                                        
         4:begin
           writeln('El saldo del jugador 1 es: ',saldo1,' Puntos');
           writeln('El saldo del jugador 2 es: ',saldo2,' Puntos');
           writeln('El saldo del jugador 3 es: ',saldo3,' Puntos');
           writeln('El saldo del jugador 4 es: ',saldo4,' Puntos');
           end;
                                                                        
         5:begin
           writeln('El saldo del jugador 1 es: ',saldo1,' Puntos');
           writeln('El saldo del jugador 2 es: ',saldo2,' Puntos');
           writeln('El saldo del jugador 3 es: ',saldo3,' Puntos');
           writeln('El saldo del jugador 4 es: ',saldo4,' Puntos');
           writeln('El saldo del jugador 5 es: ',saldo5,' Puntos');
           end;
 end;
end;

procedure apu_fila;         //Procedimiento Apuesta por Fila
begin
repeat
writeln('Seleccione una fila del 1 al 12:');
readln(fila);
until(fila>0)and(fila<13);
case m of
         1:begin
           tipo_apu1:=1;
           valor_apu1:=fila;
           end;
         2:begin
           tipo_apu2:=1;
           valor_apu2:=fila;
           end;
         3:begin
           tipo_apu3:=1;
           valor_apu3:=fila;
           end;
         4:begin
           tipo_apu4:=1;
           valor_apu4:=fila;
           end;
         5:begin
           tipo_apu5:=1;
           valor_apu5:=fila;
           end;
end;
end;

procedure apu_colum;        //Procedimiento Apuesta por Columna
begin
repeat
writeln('Seleccione una columna del 1 al 3:');
readln(columna);
until(columna>0)and(columna<4);
case m of
         1:begin
           tipo_apu1:=2;
           valor_apu1:=columna;
           end;
         2:begin
           tipo_apu2:=2;
           valor_apu2:=columna;
           end;
         3:begin
           tipo_apu3:=2;
           valor_apu3:=columna;
           end;
         4:begin
           tipo_apu4:=2;
           valor_apu4:=columna;
           end;
         5:begin
           tipo_apu5:=2;
           valor_apu5:=columna;
           end;
end;
end;

procedure apu_pi;        //Procedimiento Apuesta por Par o Impar
begin
repeat
writeln('Selecione Par:(1) o Impar:(2): ');
readln(pi);
until (pi>0)and(pi<3);
case m of
         1:begin
           tipo_apu1:=3;
           valor_apu1:=pi;
           end;
         2:begin
           tipo_apu2:=3;
           valor_apu2:=pi;
           end;
         3:begin
           tipo_apu3:=3;
           valor_apu3:=pi;
           end;
         4:begin
           tipo_apu4:=3;
           valor_apu4:=pi;
           end;
         5:begin
           tipo_apu5:=3;
           valor_apu5:=pi;
           end;
end;
end;

procedure apu_pleno;      //Procedimiento Apuesta por pleno
begin
repeat
writeln('Le gusta apostar en grande...elija un numero del 1 al 36:');
readln(z);
until(z>0)and(z<37);
case m of
         1:begin
           tipo_apu1:=4;
           valor_apu1:=z;
           end;
         2:begin
           tipo_apu2:=4;
           valor_apu2:=z;
           end;
         3:begin
           tipo_apu3:=4;
           valor_apu3:=z;
           end;
         4:begin
           tipo_apu4:=4;
           valor_apu4:=z;
           end;
         5:begin
           tipo_apu5:=4;
           valor_apu5:=z;
           end;

end;
end;

procedure eleccionapuesta;   //Procedimiento de eleccion de apuesta y monto
begin
m:=1;
repeat
writeln();
writeln('Es el turno del jugador ',m,',seleccione su tipo de apuesta:');
writeln;
writeln('(1)Fila(multiplica X12).');
writeln('(2)Columna(multiplica X3).');
writeln('(3)Par-Impar(multiplica X2).');
writeln('(4)Pleno(multiplica X36).');
readln(apu);
case apu of
           1:apu_fila;

           2:apu_colum;

           3:apu_pi;

           4:apu_pleno;
end;

randomize;
x:=random(37);

case m of
         1:begin
           repeat
           writeln('Ingrese el monto que desea apostar:');
           readln(monto1);
           until(monto1>=1)and(monto1<=saldo1);
           end;
         2:begin
           repeat
           writeln('Ingrese el monto que apostar:');
           readln(monto2);
           until(monto2>=1)and(monto2<=saldo2);
           end;
         3:begin
           repeat
           writeln('Ingrese el monto que apostar:');
           readln(monto3);
           until(monto3>=1)and(monto3<=saldo3);
           end;
         4:begin
           repeat
           writeln('Ingrese el monto que apostar:');
           readln(monto4);
           until(monto4>=1)and(monto4<=saldo4);
           end;
         5:begin
           repeat
           writeln('Ingrese el monto que apostar:');
           readln(monto5);
           until(monto5>=1)and(monto5<=saldo5);
           end;
end;
m:=m+1;
until(m=q+1);
end;

procedure resultado;    //Procedimiento de comparacion de apuestas con resultados.
begin
o:=0;
h:=0;
l:=0;
case tipo_apu1 of
                 1:case valor_apu1 of
                            1:begin
                              repeat
                              o:=o+1;
                              until(f1[o]=x)or(o=3);
                              if f1[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f1[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            2:begin
                              repeat
                              o:=o+1;
                              until(f2[o]=x)or(o=3);
                              if f2[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f2[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            3:begin
                              repeat
                              o:=o+1;
                              until(f3[o]=x)or(o=3);
                              if f3[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f3[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            4:begin
                              repeat
                              o:=o+1;
                              until(f4[o]=x)or(o=3);
                              if f4[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f4[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            5:begin
                              repeat
                              o:=o+1;
                              until(f5[o]=x)or(o=3);
                              if f5[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f5[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            6:begin
                              repeat
                              o:=o+1;
                              until(f6[o]=x)or(o=3);
                              if f6[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f6[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            7:begin
                              repeat
                              o:=o+1;
                              until(f7[o]=x)or(o=3);
                              if f7[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f7[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            8:begin
                              repeat
                              o:=o+1;
                              until(f8[o]=x)or(o=3);
                              if f8[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f8[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            9:begin
                              repeat
                              o:=o+1;
                              until(f9[o]=x)or(o=3);
                              if f9[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f9[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            10:begin
                              repeat
                              o:=o+1;
                              until(f10[o]=x)or(o=3);
                              if f10[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f10[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            11:begin
                              repeat
                              o:=o+1;
                              until(f11[o]=x)or(o=3);
                              if f11[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f11[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;

                            12:begin
                              repeat
                              o:=o+1;
                              until(f12[o]=x)or(o=3);
                              if f12[o]=x then
                              begin
                              writeln('Jugador 1 Acerto!El numero es ',x);
                              saldo1:=saldo1-monto1+monto1*12;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              if f12[o]<>x then
                              begin
                              writeln('Jugador 1 no acerto!El numero era ',x);
                              saldo1:=saldo1-monto1;
                              writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                              writeln();
                              end;
                              end;
            end;
                 2:case valor_apu1 of
                                     1:begin
                                       repeat
                                       h:=h+1;
                                       until(col1[h]=x)or(h=12);
                                       if col1[h]=x then
                                       begin
                                       writeln('Jugador 1 Acerto!,el numero es ',x);
                                       saldo1:=saldo1-monto1+monto1*3;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       if col1[h]<>x then
                                       begin
                                       writeln('Jugador 1 no acerto!,el numero era ',x);
                                       saldo1:=saldo1-monto1;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       h:=h+1;
                                       until(col2[h]=x)or(h=12);
                                       if col2[h]=x then
                                       begin
                                       writeln('Jugador 1 Acerto!,el numero es ',x);
                                       saldo1:=saldo1-monto1+monto1*3;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       if col2[h]<>x then
                                       begin
                                       writeln('Jugador 1 no acerto!,el numero era ',x);
                                       saldo1:=saldo1-monto1;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       end;

                                     3:begin
                                       repeat
                                       h:=h+1;
                                       until(col3[h]=x)or(h=12);
                                       if col3[h]=x then
                                       begin
                                       writeln('Jugador 1 Acerto!,el numero es ',x);
                                       saldo1:=saldo1-monto1+monto1*3;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       if col3[h]<>x then
                                       begin
                                       writeln('Jugador 1 no acerto!,el numero era ',x);
                                       saldo1:=saldo1-monto1;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       end;
                     end;

                 3:case valor_apu1 of
                                     1:begin
                                       repeat
                                       l:=l+1;
                                       until(par[l]=x)or(l=18);
                                       if par[l]=x then
                                       begin
                                       writeln('Jugador 1 Acerto!,el numero es ',x);
                                       saldo1:=saldo1-monto1+monto1*2;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       if par[l]<>x then
                                       begin
                                       writeln('Jugador 1 no Acerto!El numero era ',x);
                                       saldo1:=saldo1-monto1;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       l:=l+1;
                                       until(imp[l]=x)or(l=18);
                                       if imp[l]=x then
                                       begin
                                       writeln('Jugador 1 Acerto!,el numero es ',x);
                                       saldo1:=saldo1-monto1+monto1*2;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       if imp[l]<>x then
                                       begin
                                       writeln('Jugador 1 no Acerto!El numero era ',x);
                                       saldo1:=saldo1-monto1;
                                       writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                                       writeln();
                                       end;
                                       end;
                   end;

                 4:begin
                   if z=x then
                   begin
                   writeln('Jugador 1 Dediquese a esto!,el numero es ',x);
                   saldo1:=saldo1-monto1+monto1*36;
                   writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                   writeln();
                   end;
                   if z<>x then
                   begin
                   writeln('Jugador 1 no Acerto!El numero era ',x);
                   saldo1:=saldo1-monto1;
                   writeln('El saldo del jugador 1 ahora es de: ',saldo1);
                   writeln();
                   end;
                   end;
end;
o:=0;
h:=0;
l:=0;
case tipo_apu2 of
                 1:case valor_apu2 of
                            1:begin
                              repeat
                              o:=o+1;
                              until(f1[o]=x)or(o=3);
                              if f1[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f1[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            2:begin
                              repeat
                              o:=o+1;
                              until(f2[o]=x)or(o=3);
                              if f2[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f2[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            3:begin
                              repeat
                              o:=o+1;
                              until(f3[o]=x)or(o=3);
                              if f3[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f3[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            4:begin
                              repeat
                              o:=o+1;
                              until(f4[o]=x)or(o=3);
                              if f4[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f4[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            5:begin
                              repeat
                              o:=o+1;
                              until(f5[o]=x)or(o=3);
                              if f5[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f5[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            6:begin
                              repeat
                              o:=o+1;
                              until(f6[o]=x)or(o=3);
                              if f6[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f6[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            7:begin
                              repeat
                              o:=o+1;
                              until(f7[o]=x)or(o=3);
                              if f7[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f7[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            8:begin
                              repeat
                              o:=o+1;
                              until(f8[o]=x)or(o=3);
                              if f8[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f8[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            9:begin
                              repeat
                              o:=o+1;
                              until(f9[o]=x)or(o=3);
                              if f9[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f9[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            10:begin
                              repeat
                              o:=o+1;
                              until(f10[o]=x)or(o=3);
                              if f10[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f10[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            11:begin
                              repeat
                              o:=o+1;
                              until(f11[o]=x)or(o=3);
                              if f11[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f11[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;

                            12:begin
                              repeat
                              o:=o+1;
                              until(f12[o]=x)or(o=3);
                              if f12[o]=x then
                              begin
                              writeln('Jugador 2 Acerto!El numero es ',x);
                              saldo2:=saldo2-monto2+monto2*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              if f12[o]<>x then
                              begin
                              writeln('Jugador 2 no acerto!El numero era ',x);
                              saldo2:=saldo2-monto2;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                              writeln();
                              end;
                              end;
            end;
                 2:case valor_apu2 of
                                     1:begin
                                       repeat
                                       h:=h+1;
                                       until(col1[h]=x)or(h=12);
                                       if col1[h]=x then
                                       begin
                                       writeln('Jugador 2 Acerto!,el numero es ',x);
                                       saldo2:=saldo2-monto2+monto2*3;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       if col1[h]<>x then
                                       begin
                                       writeln('Jugador 2 no acerto!,el numero era ',x);
                                       saldo2:=saldo2-monto2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       h:=h+1;
                                       until(col2[h]=x)or(h=12);
                                       if col2[h]=x then
                                       begin
                                       writeln('Jugador 2 Acerto!,el numero es ',x);
                                       saldo2:=saldo2-monto2+monto2*3;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       if col2[h]<>x then
                                       begin
                                       writeln('Jugador 2 no acerto!,el numero era ',x);
                                       saldo2:=saldo2-monto2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       end;

                                     3:begin
                                       repeat
                                       h:=h+1;
                                       until(col3[h]=x)or(h=12);
                                       if col3[h]=x then
                                       begin
                                       writeln('Jugador 2 Acerto!,el numero es ',x);
                                       saldo2:=saldo2-monto2+monto2*3;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       if col3[h]<>x then
                                       begin
                                       writeln('Jugador 2 no acerto!,el numero era ',x);
                                       saldo2:=saldo2-monto2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       end;
                     end;

                 3:case valor_apu2 of
                                     1:begin
                                       repeat
                                       l:=l+1;
                                       until(par[l]=x)or(l=18);
                                       if par[l]=x then
                                       begin
                                       writeln('Jugador 2 Acerto!,el numero es ',x);
                                       saldo2:=saldo2-monto2+monto2*2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       if par[l]<>x then
                                       begin
                                       writeln('Jugador 2 no Acerto!El numero era ',x);
                                       saldo2:=saldo2-monto2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       l:=l+1;
                                       until(imp[l]=x)or(l=18);
                                       if imp[l]=x then
                                       begin
                                       writeln('Jugador 2 Acerto!,el numero es ',x);
                                       saldo2:=saldo2-monto2+monto2*2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       if imp[l]<>x then
                                       begin
                                       writeln('Jugador 2 no Acerto!El numero era ',x);
                                       saldo2:=saldo2-monto2;
                                       writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                                       writeln();
                                       end;
                                       end;
                   end;

                 4:begin
                   if z=x then
                   begin
                   writeln('Jugador 2 Dediquese a esto!,el numero es ',x);
                   saldo2:=saldo2-monto2+monto2*36;
                   writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                   writeln();
                   end;
                   if z<>x then
                   begin
                   writeln('Jugador 2 no Acerto!El numero era ',x);
                   saldo2:=saldo2-monto2;
                   writeln('El saldo del jugador 2 ahora es de: ',saldo2);
                   writeln();
                   end;
                   end;
end;
o:=0;
h:=0;
l:=0;
case tipo_apu3 of
                 1:case valor_apu3 of
                            1:begin
                              repeat
                              o:=o+1;
                              until(f1[o]=x)or(o=3);
                              if f1[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f1[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            2:begin
                              repeat
                              o:=o+1;
                              until(f2[o]=x)or(o=3);
                              if f2[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f2[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            3:begin
                              repeat
                              o:=o+1;
                              until(f3[o]=x)or(o=3);
                              if f3[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f3[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            4:begin
                              repeat
                              o:=o+1;
                              until(f4[o]=x)or(o=3);
                              if f4[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f4[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            5:begin
                              repeat
                              o:=o+1;
                              until(f5[o]=x)or(o=3);
                              if f5[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f5[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            6:begin
                              repeat
                              o:=o+1;
                              until(f6[o]=x)or(o=3);
                              if f6[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f6[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            7:begin
                              repeat
                              o:=o+1;
                              until(f7[o]=x)or(o=3);
                              if f7[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f7[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            8:begin
                              repeat
                              o:=o+1;
                              until(f8[o]=x)or(o=3);
                              if f8[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f8[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            9:begin
                              repeat
                              o:=o+1;
                              until(f9[o]=x)or(o=3);
                              if f9[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 2 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f9[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            10:begin
                              repeat
                              o:=o+1;
                              until(f10[o]=x)or(o=3);
                              if f10[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f10[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            11:begin
                              repeat
                              o:=o+1;
                              until(f11[o]=x)or(o=3);
                              if f11[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f11[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;

                            12:begin
                              repeat
                              o:=o+1;
                              until(f12[o]=x)or(o=3);
                              if f12[o]=x then
                              begin
                              writeln('Jugador 3 Acerto!El numero es ',x);
                              saldo3:=saldo3-monto3+monto3*12;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              if f12[o]<>x then
                              begin
                              writeln('Jugador 3 no acerto!El numero era ',x);
                              saldo3:=saldo3-monto3;
                              writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                              writeln();
                              end;
                              end;
            end;
                 2:case valor_apu2 of
                                     1:begin
                                       repeat
                                       h:=h+1;
                                       until(col1[h]=x)or(h=12);
                                       if col1[h]=x then
                                       begin
                                       writeln('Jugador 3 Acerto!,el numero es ',x);
                                       saldo3:=saldo3-monto3+monto3*3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       if col1[h]<>x then
                                       begin
                                       writeln('Jugador 3 no acerto!,el numero era ',x);
                                       saldo3:=saldo3-monto3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       h:=h+1;
                                       until(col2[h]=x)or(h=12);
                                       if col2[h]=x then
                                       begin
                                       writeln('Jugador 3 Acerto!,el numero es ',x);
                                       saldo3:=saldo3-monto3+monto3*3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       if col2[h]<>x then
                                       begin
                                       writeln('Jugador 3 no acerto!,el numero era ',x);
                                       saldo3:=saldo3-monto3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       end;

                                     3:begin
                                       repeat
                                       h:=h+1;
                                       until(col3[h]=x)or(h=12);
                                       if col3[h]=x then
                                       begin
                                       writeln('Jugador 3 Acerto!,el numero es ',x);
                                       saldo3:=saldo3-monto3+monto3*3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       if col3[h]<>x then
                                       begin
                                       writeln('Jugador 3 no acerto!,el numero era ',x);
                                       saldo3:=saldo3-monto3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       end;
                     end;

                 3:case valor_apu2 of
                                     1:begin
                                       repeat
                                       l:=l+1;
                                       until(par[l]=x)or(l=18);
                                       if par[l]=x then
                                       begin
                                       writeln('Jugador 3 Acerto!,el numero es ',x);
                                       saldo3:=saldo3-monto3+monto3*2;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       if par[l]<>x then
                                       begin
                                       writeln('Jugador 3 no Acerto!El numero era ',x);
                                       saldo3:=saldo3-monto3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       l:=l+1;
                                       until(imp[l]=x)or(l=18);
                                       if imp[l]=x then
                                       begin
                                       writeln('Jugador 3 Acerto!,el numero es ',x);
                                       saldo3:=saldo3-monto3+monto3*2;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       if imp[l]<>x then
                                       begin
                                       writeln('Jugador 3 no Acerto!El numero era ',x);
                                       saldo3:=saldo3-monto3;
                                       writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                                       writeln();
                                       end;
                                       end;
                   end;

                 4:begin
                   if z=x then
                   begin
                   writeln('Jugador 3 Dediquese a esto!,el numero es ',x);
                   saldo3:=saldo3-monto3+monto3*36;
                   writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                   writeln();
                   end;
                   if z<>x then
                   begin
                   writeln('Jugador 3 no Acerto!El numero era ',x);
                   saldo3:=saldo3-monto3;
                   writeln('El saldo del jugador 3 ahora es de: ',saldo3);
                   writeln();
                   end;
                   end;
end;
o:=0;
h:=0;
l:=0;
case tipo_apu4 of
                 1:case valor_apu4 of
                            1:begin
                              repeat
                              o:=o+1;
                              until(f1[o]=x)or(o=3);
                              if f1[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f1[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            2:begin
                              repeat
                              o:=o+1;
                              until(f2[o]=x)or(o=3);
                              if f2[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f2[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            3:begin
                              repeat
                              o:=o+1;
                              until(f3[o]=x)or(o=3);
                              if f3[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f3[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            4:begin
                              repeat
                              o:=o+1;
                              until(f4[o]=x)or(o=3);
                              if f4[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f4[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            5:begin
                              repeat
                              o:=o+1;
                              until(f5[o]=x)or(o=3);
                              if f5[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f5[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            6:begin
                              repeat
                              o:=o+1;
                              until(f6[o]=x)or(o=3);
                              if f6[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f6[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            7:begin
                              repeat
                              o:=o+1;
                              until(f7[o]=x)or(o=3);
                              if f7[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f7[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            8:begin
                              repeat
                              o:=o+1;
                              until(f8[o]=x)or(o=3);
                              if f8[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f8[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            9:begin
                              repeat
                              o:=o+1;
                              until(f9[o]=x)or(o=3);
                              if f9[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f9[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            10:begin
                              repeat
                              o:=o+1;
                              until(f10[o]=x)or(o=3);
                              if f10[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f10[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            11:begin
                              repeat
                              o:=o+1;
                              until(f11[o]=x)or(o=3);
                              if f11[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f11[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;

                            12:begin
                              repeat
                              o:=o+1;
                              until(f12[o]=x)or(o=3);
                              if f12[o]=x then
                              begin
                              writeln('Jugador 4 Acerto!El numero es ',x);
                              saldo4:=saldo4-monto4+monto4*12;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              if f12[o]<>x then
                              begin
                              writeln('Jugador 4 no acerto!El numero era ',x);
                              saldo4:=saldo4-monto4;
                              writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                              writeln();
                              end;
                              end;
            end;
                 2:case valor_apu2 of
                                     1:begin
                                       repeat
                                       h:=h+1;
                                       until(col1[h]=x)or(h=12);
                                       if col1[h]=x then
                                       begin
                                       writeln('Jugador 4 Acerto!,el numero es ',x);
                                       saldo4:=saldo4-monto4+monto4*3;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       if col1[h]<>x then
                                       begin
                                       writeln('Jugador 4 no acerto!,el numero era ',x);
                                       saldo4:=saldo4-monto4;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       h:=h+1;
                                       until(col2[h]=x)or(h=12);
                                       if col2[h]=x then
                                       begin
                                       writeln('Jugador 4 Acerto!,el numero es ',x);
                                       saldo4:=saldo4-monto4+monto4*3;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       if col2[h]<>x then
                                       begin
                                       writeln('Jugador 4 no acerto!,el numero era ',x);
                                       saldo4:=saldo4-monto4;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       end;

                                     3:begin
                                       repeat
                                       h:=h+1;
                                       until(col3[h]=x)or(h=12);
                                       if col3[h]=x then
                                       begin
                                       writeln('Jugador 4 Acerto!,el numero es ',x);
                                       saldo4:=saldo4-monto4+monto4*3;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       if col3[h]<>x then
                                       begin
                                       writeln('Jugador 4 no acerto!,el numero era ',x);
                                       saldo4:=saldo4-monto4;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       end;
                     end;

                 3:case valor_apu2 of
                                     1:begin
                                       repeat
                                       l:=l+1;
                                       until(par[l]=x)or(l=18);
                                       if par[l]=x then
                                       begin
                                       writeln('Jugador 4 Acerto!,el numero es ',x);
                                       saldo4:=saldo4-monto4+monto4*2;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       if par[l]<>x then
                                       begin
                                       writeln('Jugador 4 no Acerto!El numero era ',x);
                                       saldo4:=saldo4-monto4;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       l:=l+1;
                                       until(imp[l]=x)or(l=18);
                                       if imp[l]=x then
                                       begin
                                       writeln('Jugador 4 Acerto!,el numero es ',x);
                                       saldo4:=saldo4-monto4+monto4*2;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       if imp[l]<>x then
                                       begin
                                       writeln('Jugador 4 no Acerto!El numero era ',x);
                                       saldo4:=saldo4-monto4;
                                       writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                                       writeln();
                                       end;
                                       end;
                   end;

                 4:begin
                   if z=x then
                   begin
                   writeln('Jugador 4 Dediquese a esto!,el numero es ',x);
                   saldo2:=saldo4-monto4+monto4*36;
                   writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                   writeln();
                   end;
                   if z<>x then
                   begin
                   writeln('Jugador 4 no Acerto!El numero era ',x);
                   saldo4:=saldo4-monto4;
                   writeln('El saldo del jugador 4 ahora es de: ',saldo4);
                   writeln();
                   end;
                   end;
end;
o:=0;
h:=0;
l:=0;
case tipo_apu5 of
                 1:case valor_apu5 of
                            1:begin
                              repeat
                              o:=o+1;
                              until(f1[o]=x)or(o=3);
                              if f1[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f1[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            2:begin
                              repeat
                              o:=o+1;
                              until(f2[o]=x)or(o=3);
                              if f2[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f2[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            3:begin
                              repeat
                              o:=o+1;
                              until(f3[o]=x)or(o=3);
                              if f3[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f3[o]<>x then
                              begin
                              writeln('vo acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            4:begin
                              repeat
                              o:=o+1;
                              until(f4[o]=x)or(o=3);
                              if f4[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f4[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            5:begin
                              repeat
                              o:=o+1;
                              until(f5[o]=x)or(o=3);
                              if f5[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f5[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            6:begin
                              repeat
                              o:=o+1;
                              until(f6[o]=x)or(o=3);
                              if f6[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f6[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            7:begin
                              repeat
                              o:=o+1;
                              until(f7[o]=x)or(o=3);
                              if f7[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f7[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            8:begin
                              repeat
                              o:=o+1;
                              until(f8[o]=x)or(o=3);
                              if f8[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f8[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            9:begin
                              repeat
                              o:=o+1;
                              until(f9[o]=x)or(o=3);
                              if f9[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f9[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            10:begin
                              repeat
                              o:=o+1;
                              until(f10[o]=x)or(o=3);
                              if f10[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f10[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            11:begin
                              repeat
                              o:=o+1;
                              until(f11[o]=x)or(o=3);
                              if f11[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f11[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;

                            12:begin
                              repeat
                              o:=o+1;
                              until(f12[o]=x)or(o=3);
                              if f12[o]=x then
                              begin
                              writeln('Jugador 5 Acerto!El numero es ',x);
                              saldo5:=saldo5-monto5+monto5*12;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              if f12[o]<>x then
                              begin
                              writeln('Jugador 5 no acerto!El numero era ',x);
                              saldo5:=saldo5-monto5;
                              writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                              writeln();
                              end;
                              end;
            end;
                 2:case valor_apu5 of
                                     1:begin
                                       repeat
                                       h:=h+1;
                                       until(col1[h]=x)or(h=12);
                                       if col1[h]=x then
                                       begin
                                       writeln('Jugador 5 Acerto!,el numero es ',x);
                                       saldo5:=saldo5-monto5+monto5*3;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       if col1[h]<>x then
                                       begin
                                       writeln('Jugador 5 no acerto!,el numero era ',x);
                                       saldo5:=saldo5-monto5;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       h:=h+1;
                                       until(col2[h]=x)or(h=12);
                                       if col2[h]=x then
                                       begin
                                       writeln('Jugador 5 Acerto!,el numero es ',x);
                                       saldo5:=saldo5-monto5+monto5*3;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       if col2[h]<>x then
                                       begin
                                       writeln('Jugador 5 no acerto!,el numero era ',x);
                                       saldo5:=saldo5-monto5;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       end;

                                     3:begin
                                       repeat
                                       h:=h+1;
                                       until(col3[h]=x)or(h=12);
                                       if col3[h]=x then
                                       begin
                                       writeln('Jugador 5 Acerto!,el numero es ',x);
                                       saldo5:=saldo5-monto5+monto5*3;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       if col3[h]<>x then
                                       begin
                                       writeln('Jugador 5 no acerto!,el numero era ',x);
                                       saldo5:=saldo5-monto5;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       end;
                     end;

                 3:case valor_apu5 of
                                     1:begin
                                       repeat
                                       l:=l+1;
                                       until(par[l]=x)or(l=18);
                                       if par[l]=x then
                                       begin
                                       writeln('Jugador 5 Acerto!,el numero es ',x);
                                       saldo5:=saldo5-monto5+monto5*2;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       if par[l]<>x then
                                       begin
                                       writeln('Jugador 5 no Acerto!El numero era ',x);
                                       saldo5:=saldo5-monto5;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       end;

                                     2:begin
                                       repeat
                                       l:=l+1;
                                       until(imp[l]=x)or(l=18);
                                       if imp[l]=x then
                                       begin
                                       writeln('Jugador 5 Acerto!,el numero es ',x);
                                       saldo5:=saldo5-monto5+monto5*2;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       if imp[l]<>x then
                                       begin
                                       writeln('Jugador 5 no Acerto!El numero era ',x);
                                       saldo5:=saldo5-monto5;
                                       writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                                       writeln();
                                       end;
                                       end;
                   end;

                 4:begin
                   if z=x then
                   begin
                   writeln('Jugador 5 Dediquese a esto!,el numero es ',x);
                   saldo5:=saldo5-monto5+monto5*36;
                   writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                   writeln();
                   end;
                   if z<>x then
                   begin
                   writeln('Jugador 5 no Acerto!El numero era ',x);
                   saldo5:=saldo5-monto5;
                   writeln('El saldo del jugador 5 ahora es de: ',saldo5);
                   writeln();
                   end;
                   end;
end;
end;

BEGIN     //EMPIEZA EL PROGRAMA...

registracion;
seteo_saldos;
ClrScr;
mostrar_ruleta;
saldo;

t:=1;
while(saldo1<200)and(saldo2<200)and(saldo3<200)and(saldo4<200)and(saldo5<200)and(t<10)do
begin
eleccionapuesta;
ClrScr;
mostrar_ruleta;
resultado;
t:=t+1;
end;
if t=10then
if ((saldo1)>(saldo2 and saldo3 and saldo4 and saldo5)) then
writeln('El jugador 1 gano la partida, que lastima que no sea plata de verdad...');
if ((saldo2)>(saldo1 and saldo3 and saldo4 and saldo5)) then
writeln('El jugador 2 gano la partida, que lastima que no sea plata de verdad...');
if ((saldo3)>(saldo2 and saldo1 and saldo4 and saldo5)) then
writeln('El jugador 3 gano la partida, que lastima que no sea plata de verdad...');
if ((saldo4)>(saldo2 and saldo3 and saldo1 and saldo5)) then
writeln('El jugador 4 gano la partida, que lastima que no sea plata de verdad...');
if ((saldo5)>(saldo2 and saldo3 and saldo4 and saldo1)) then
writeln('El jugador 5 gano la partida, que lastima que no sea plata de verdad...');

if saldo1>=200 then
writeln('El jugador 1 gano la partida, que lastima que no sea plata de verdad...');
if saldo2>=200 then
writeln('El jugador 2 gano la partida, que lastima que no sea plata de verdad...');
if saldo3>=200 then
writeln('El jugador 3 gano la partida, que lastima que no sea plata de verdad...');
if saldo4>=200 then
writeln('El jugador 4 gano la partida, que lastima que no sea plata de verdad...');
if saldo5>=200 then
writeln('El jugador 5 gano la partida, que lastima que no sea plata de verdad...');
readkey();

END.
