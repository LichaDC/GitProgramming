#1)
#print(14/0)
#DEM�S C�DIGO
#Como salta el error, el c�digo no se sigue ejecutando

#try:
#    print(14/0)
#except:
#    print("Hay un error al dividir")

#try:
#    print(14/0)
#except ZeroDivisionError:
#    print("No se puede dividir por 0")

#try:
#    tupla = (1,3,3,4,5)
#    print (tupla[10])
#except ZeroDivisionError:
#    print("Hay un error al dividir")

#try:
#    tupla = (1,3,3,4,5)
#    print (tupla[10])
#except ZeroDivisionError:
#    print("Hay un error al dividir")
#except IndexError:
#    print("No existe ese elemento")
    
try:
    tupla = (1,3,3,4,5)
    print (tupla[10])
except Exception as error: #Prestar atenci�n a las may�sculas
    print ("No se pudo ejecutar, por", error)
print ("esto va al final")
