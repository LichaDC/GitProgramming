def Comparador(x, y):
    """Compara dos n�meros y devuelve el mayor"""
    if (x>y):
        print("El n�mero m�s grande es", x)
    elif (y>x):
        print("El n�mero m�s grande es", y)

print (Comparador.__name__, ":")
print (Comparador.__doc__)

print ("\nIngrese los n�meros a comparar")
Comparador(input(), input())

# DESDE EL INT�RPRETE:
# 
#   from "nombre archivo" import "nombre funci�n"
#
#   help( nombre funci�n )
#

#   En qu� lugar puedo poner la documentaci�n? La puedo poner abajo de todo? Afuera?

#   Funciona si lo pon�s como comentario en lugar de """x"""?
