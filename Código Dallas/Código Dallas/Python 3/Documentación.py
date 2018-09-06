def Comparador(x, y):
    """Compara dos números y devuelve el mayor"""
    if (x>y):
        print("El número más grande es", x)
    elif (y>x):
        print("El número más grande es", y)

print (Comparador.__name__, ":")
print (Comparador.__doc__)

print ("\nIngrese los números a comparar")
Comparador(input(), input())

# DESDE EL INTÉRPRETE:
# 
#   from "nombre archivo" import "nombre función"
#
#   help( nombre función )
#

#   En qué lugar puedo poner la documentación? La puedo poner abajo de todo? Afuera?

#   Funciona si lo ponés como comentario en lugar de """x"""?
