"""

• Ángulo no funciona bien para decir que es paralelo (=0)
• No me funcionan los verificadores como el de abajo...

while eleccion <0 | eleccion > 13:
    eleccion = int( input( 'Número inválido. Tratá de nuevo' ))

"""
# LIMPIAR #
import os
# MATHS #
import math
sqrt = math.sqrt
acos = math.acos
degrees = math.degrees

# TESTING #


v = [1, 2, 3]
u = [4, 5, 6]
w = [7, 8, 9]

# --- FUNCIONES --- #
# Interfase
def presentacion(accion, elementos):
    print ('Elegiste "{}".'.format (accion))
    print ('Necesito {}...'.format(elementos))
    print ('')

def pedirVector(orden = ''):
    v = []
    v.append( int( input( 'Ingrese la componente en X del {} vector '.format(orden))))
    v.append( int( input( 'Ingrese la componente en Y del {} vector '.format(orden))))
    print ('')
    return v

def pedirEscalar():
    e = int( input( 'Ingrese el escalar '))
    print ('')
    return e

def pedirPunto(orden = ''):
    p = []
    p.append( int( input( 'Ingrese la componente en X del {} punto '.format(orden))))
    p.append( int( input( 'Ingrese la componente en Y del {} punto '.format(orden))))
    print ('')
    return p

def resultado(resultado):
    print ('El resultado es {}'.format(resultado))
    print ('')
    print ('')

def limpiar():
    os.system('cls')
# --- ---
def dosVectores(accion):
    presentacion(accion, 'dos vectores')
    v = pedirVector('primer')
    u = pedirVector('segundo')
    return v, u

def unVector(accion):
    presentacion(accion, 'un vector')
    v = pedirVector()
    return v

def tresVectores(accion):
    presentacion(accion, 'tres vectores')
    v = pedirVector('primer')
    u = pedirVector('segundo')
    w = pedirVector('tercer')
    return v, u, w

def escalarVector(accion):
    presentacion(accion, 'un escalar y un vector')
    e = pedirEscalar()
    v = pedirVector()
    return e, v


# --- OPERACIONES --- #
def salir(): # 0 #
    pass


def suma(): # 1 #
    v, u = dosVectores('suma')
    resultado ([ v[0] + u[0], v[1] + u[1] ])


def resta(): # 2 #
    v, u = dosVectores('resta')
    resultado ([ v[0] - u[0], v[1] - u[1] ])


def productoEscalar(): # 3 #
    v, u = dosVectores('producto escalar')
    resultado (v[0] * u[0] + v[1] * u[1])


def productoVectorial(): # 4 #
    v, u = dosVectores('producto vectorial')
    resultado ([ v[1] * u[2] - u[1] * v[2],
              -( v[0] * u[2] - u[0] * v[2] ),
                 v[0] * u[1] - u[0] * v[1] ])


def productoMixto(): # 5 #
    v, u, w = tresVectores('productoMixto')
    resultado ([ v[0] * ( u[1] * w[2] - w[1] * u[2] )
               - v[1] * ( u[0] * w[2] - w[0] * u[2] )
               + v[2] * ( u[0] * w[1] - w[0] * u[1] ) ])


def angulo(): # 6 #
    v, u = dosVectores('ángulo')
    resultado( degrees( acos(
    (v[0] * u[0] + v[1] * u[1]) / (sqrt(v[0]**2 + v[1]**2) * sqrt(u[0]**2 + u[1]**2)))))


def modulo(): # 7 #
    v = unVector('módulo')
    resultado (sqrt(v[0]**2 + v[1]**2))


def puntoMedio(): # 8 #
    v, u = dosVectores('punto medio')
    resultado ([ (v[0] + u[0]) / 2, (v[1] + u[1]) / 2 ])


def proyeccionEscalar(): # 9 #
    v, u = dosVectores('proyección escalar')
    resultado (v[0] * ( v[0]*u[0]+v[1]*u[1]) / (v[0]*v[0]+v[1]*v[1] ) +
                v[1] * ( v[0]*u[0]+v[1]*u[1]) / (v[0]*v[0]+v[1]*v[1] ))


def proyeccionVectorial(): # 10 #
    v, u = dosVectores('proyección vectorial')
    resultado ([v[0] * (v[0]*u[0]+v[1]*u[1]) / (v[0]*v[0]+v[1]*v[1]),
                v[1] * (v[0]*u[0]+v[1]*u[1]) / (v[0]*v[0]+v[1]*v[1])])


def versorAsociado(): # 11 #
    v = unVector('versor asociado')
    resultado ([ v[0]/(sqrt(v[0]**2+v[1]**2)), v[1]/(sqrt(v[0]**2+v[1]**2))])


def cosenoDirector(): # 12 #
    v = unVector('coseno director')
    resultado ([ v[0]/(sqrt(v[0]**2+v[1]**2)), v[1]/(sqrt(v[0]**2+v[1]**2))])


def escalarPorVector(): # 13 #
   e, v = escalarVector('multimplicación de escalar por vector')
   resultado ([v[0] * e, v[1] * e])



def menu():
    continuar = True
    while continuar == True:
        # Diccionario con opciones
        opciones = {
             0: salir,
             1: suma,
             2: resta,
             3: productoEscalar,
             4: productoVectorial,
             4: productoMixto,
             6: angulo,
             7: modulo,
             8: puntoMedio,
             9: proyeccionEscalar,
            10: proyeccionVectorial,
            11: versorAsociado,
            12: cosenoDirector,
            13: escalarPorVector,
        }

        for opcion in opciones:
            print (opcion, '->', opciones[opcion].__name__)
        eleccion = int( input('\n¿Qué cálculo quisieras hacer? '))

        # Ejecuta elección
        desicion = opciones[eleccion]
        desicion()

        # Pregunta si seguir
        print ('¿Querés seguir usando el programa?','0: No', '1: Sí', sep="\n")
        rta = int (input())
        if   rta == 0:
            continuar = False
        elif rta == 1:
            limpiar()


# --- MAIN --- #

menu()
