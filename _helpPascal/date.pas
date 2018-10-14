uses crt, sysutils;

var yy, mm, dd: word;

BEGIN
DeCodeDate(date(), yy, mm, dd );

writeln(yy);
writeln(mm);
writeln(dd);

readkey();

end.
