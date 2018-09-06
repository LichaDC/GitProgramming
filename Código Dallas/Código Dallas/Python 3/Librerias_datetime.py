from datetime import date, datetime, timedelta

now = datetime.now()

microsegundo = now.microsecond
segundo      = now.second
minuto       = now.minute
hora         = now.hour
dia          = now.day
mes          = now.month
anio         = now.year

dia2  = date.today().day
mes2  = date.today().month
anio2 = date.today().year

print (segundo, minuto, hora, dia, mes, anio)

print '%s/%s/%s' % (now.day, now.month, now.year)
print '%s/%s/%s - %s:%s:%s' % (now.day, now.month, now.year, now.hour, now.minute, now.second)



mi_nacimiento = datetime(1999,8,30,8,20,00000)
print (mi_nacimiento)
primer_mes = mi_nacimiento + timedelta( days = 31)
print (primer_mes)
primer_anio = mi_nacimiento + timedelta(days = 365)
print (primer_anio)


print (mi_nacimiento.strftime("%d, %B, %Y,"))
print (mi_nacimiento.strftime("%d, %b, %Y, %H, %M, %S"))
print (mi_nacimiento.strftime("%d, %m, %y, %H, %M, %S"))


#def espaniol(fecha):
#    meses = ("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre")
#    return "Hoy es el día {d} de {m} del año {a}".format(d= dt.day, m= meses[dt.month -1], dt.year )
#
#print espaniol(dt)
