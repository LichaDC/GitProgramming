# LIMPIAR #
import os
# MATHS #
import math
sqrt = math.sqrt
acos = math.acos
degrees = math.degrees

class Operacion:

    def __init__(self, nombre, formula2D, formula3D):
        self.nombre    = nombre
        self.formula2D = formula2D
        self.formula3D = formula3D
        self.formula2D.insert (0, None)
        self.formula3D.insert (0, None)

# --- OBJETOS --- #
suma = Operacion( # 1 #
    'Suma',
    [ '', ['v[1]+u[1]', 'v[2]+u[2]'], ['v[1]+u[1]+w[1]', 'v[2]+u[2]+w[2]'] ],
    [ '', ['v[1]+u[1]', 'v[2]+u[2]', 'v[3]+u[3]'], ['v[1]+u[1]+w[1]', 'v[2]+u[2]+w[2]', 'v[3]+u[3]+w[3]'] ]
) # v + u


resta = Operacion( # 2 #
    'Resta',
    [ '', ['v[1]-u[1]', 'v[2]-u[2]'], '' ],
    [ '', ['v[1]-u[1]', 'v[2]-u[2]', 'v[3]-u[3]'], '' ]
) # v - u


productoEscalar = Operacion( # 3 #
    'Producto Escalar',
    [ '', ['v[1]*u[1] + v[2]*u[2]'], '' ],
    [ '', ['v[1]*u[1] + v[2]*u[2] + v[3]*u[3]'], '' ]
) # v • u


productoVectorial = Operacion( # 4 #
    'Producto Vectorial',
    [ '', '', '' ],
    [ '', ['v[2]*u[3] - u[2]*v[3]', '-(v[1]*u[3] - u[1]*v[3])', 'v[1]*u[2] - u[1]*v[2]'], '' ]
) #         | v1 v2 v3 |
  # v x u = | u1 u2 u3 |
  #         | w1 w2 w3 |


productoMixto = Operacion( # 5 #
    'Producto Mixto',
    [ '', '', '' ],
    [ '', '', ['v[1] * (u[2]*w[3] - w[2]*u[3]) \
              - v[2] * (u[1]*w[3] - w[1]*u[3]) \
              + v[3] * (u[1]*w[2] - w[1]*u[2])']]
) # v • (u x w)


angulo = Operacion( # 6 #
    'Ángulo',
    [ '', ['round( degrees( acos((v[1]*u[1] + v[2]*u[2]) / (sqrt(v[1]**2 + v[2]**2) * sqrt(u[1]**2 + u[2]**2)))), 2)'], '' ],
    [ '', ['round( degrees( acos((v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / \
          (sqrt(v[1]**2+v[2]**2+v[3]**2) * sqrt(u[1]**2+u[2]**2+u[3]**2)))), 2)'], '' ]
    ) # arcCos(v • u / |v| • |u|)


modulo = Operacion( # 7 #
    'Múdulo',
    [ ['sqrt(v[1]**2 + v[2]**2)'], '', '', ],
    [ ['sqrt(v[1]**2 + v[2]**2 + v[3]**2)'], '', '']
) # |v|


puntoMedio = Operacion( # 8 #
    'Punto Medio',
    [ '', ['(v[1]+u[1])/2', '(v[2]+u[2])/2'], '' ],
    [ '', ['(v[1]+u[1])/2', '(v[2]+u[2])/2', '(v[3]+u[3])/2'], '' ]
 ) # (v+u) / 2


proyeccionEscalar = Operacion( # 9 #
    'Proyección Escalar',
    [ '', ['v[1] * (v[1]*u[1]+v[2]*u[2]) / (v[1]**2+v[2]**2) + \
            v[2] * (v[1]*u[1]+v[2]*u[2]) / (v[1]**2+v[2]**2)'], ''],
    [ '', ['v[1] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2) + \
            v[2] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2) + \
            v[3] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2)'], '' ]
) # proy v(u) = v • (v • u / v • v )


proyeccionVectorial = Operacion( # 10 #
    'Proyección Vectorial',
    [ '', ['v[1] * (v[1]*u[1]+v[2]*u[2]) / (v[1]**2+v[2]**2), \
            v[2] * (v[1]*u[1]+v[2]*u[2]) / (v[1]**2+v[2]**2)'], ''],
    [ '', ['v[1] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2), \
            v[2] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2), \
            v[3] * (v[1]*u[1]+v[2]*u[2]+v[3]*u[3]) / (v[1]**2+v[2]**2+v[3]**2)'], '' ]
) # proy v(u) = v • (v • u / v • v ) (sin sumar al final)


versorAsociado = Operacion( # 11 #
    'Versor Asociado',
    [ ['v[1] / sqrt(v[1]**2 + v[2]**2), v[2] / sqrt(v[1]**2 + v[2]**2)'], '', ''],
    [ ['v[1] / sqrt(v[1]**2 + v[2]**2 + v[3]**2), \
      v[2] / sqrt(v[1]**2 + v[2]**2 + v[3]**2), \
      v[3] / sqrt(v[1]**2 + v[2]**2 + v[3]**2)'], '', '']
) # v / |v|

cosenoDirector = Operacion( # 12 #
    'Coseno Director',
    [ ['v[1] / sqrt(v[1]**2 + v[2]**2), v[2] / sqrt(v[1]**2 + v[2]**2)'], '', ''],
    [ ['v[1] / sqrt(v[1]**2 + v[2]**2 + v[3]**2), \
      v[2] / sqrt(v[1]**2 + v[2]**2 + v[3]**2), \
      v[3] / sqrt(v[1]**2 + v[2]**2 + v[3]**2)'], '', '']
) # v / |v| (= a versor asociado)




# --- FUNCIONES --- #
def limpiar(): # Limpia la pantalla
    os.system('cls')



def pedirVector(eje, numero = ''):
    while True:
        coord = input( 'Ingrese las coordenadas en {} del {} vector: '.format(eje, numero))
        coord = float(coord)
        coord = int (coord) if coord %1 == 0 else coord
        return coord

def operar(self):
    print( 'Elegiste --- {} ---\n'.format( self.nombre ) )
    # Renombro variables
    f2D = self.formula2D
    f3D = self.formula3D

    # Con cuantos vectores trabajar
    if   f2D[2] == '' and f3D[2] == '' and f2D[3] == '' and f3D[3] == '':
        vectores = 1
    elif f2D[1] == '' and f3D[1] == '' and f2D[3] == '' and f3D[3] == '':
        vectores = 2
    elif f2D[1] == '' and f3D[1] == '' and f2D[2] == '' and f3D[2] == '':
        vectores = 3
    else:
        print( '¿Querés trabajar con 2 o 3 vectores? ' )
        vectores = int( input( '   Escribí "2" o "3", según prefieras: ' ))
        while vectores != 2 and vectores != 3:
            vectores = int( input('Respuesta inválida. Tenés que escribir "2" o "3": '))
    print()

    # Con qué dimensiones trabajar
    if   f2D[vectores] == '':
        dimension = '3D'
    elif f3D[vectores] == '':
        dimension = '2D'
    else:
        print( '¿Con qué dimensión querés trabajar?' )
        dimension = input( '   Escribí "2D" o "3D" según prefieras: ' )
        while dimension != '2D' and dimension != '3D':
            dimension = input( 'Respuesta inválida. Tenés que escribir "2D" o "3D": ' )
    print()

    # Pido los vectores necesarios
    v = [None]
    v.append( pedirVector('X', 'primer' ))
    v.append( pedirVector('Y', 'primer' ))
    v.append( pedirVector('Z', 'primer' )) if                   dimension == '3D' else None
    print()                                if vectores != 1 else None
    u = [None]                             if vectores != 1 else None
    u.append( pedirVector('X', 'segundo')) if vectores != 1 else None
    u.append( pedirVector('Y', 'segundo')) if vectores != 1 else None
    u.append( pedirVector('Z', 'segundo')) if vectores != 1 and dimension == '3D' else None
    print()                                if vectores == 3 else None
    w = [None]                             if vectores == 3 else None
    w.append( pedirVector('X', 'tercer' )) if vectores == 3 else None
    w.append( pedirVector('Y', 'tercer' )) if vectores == 3 else None
    w.append( pedirVector('Z', 'tercer' )) if vectores == 3 and dimension == '3D' else None
    print()
    print()

    # Opera y da el resultado
    if dimension == '2D':
        print( '     --- El resultado es {}. ---'.format( list( map( eval, f2D[vectores] ) ) ) )
    else:
        print( '     --- El resultado es {}. ---'.format( list( map( eval, f3D[vectores] ) ) ) )

def menu():
    continuar = True
    while continuar == True:
        # Diccionario con opciones|
        opciones = {
             0: 'salir',
             1: 'suma',
             2: 'resta',
             3: 'productoEscalar',
             4: 'productoVectorial',
             5: 'productoMixto',
             6: 'angulo',
             7: 'modulo',
             8: 'puntoMedio',
             9: 'proyeccionEscalar',
            10: 'proyeccionVectorial',
            11: 'versorAsociado',
            12: 'cosenoDirector',
        }
        for opcion in opciones:
            print (opcion, '->', opciones[opcion])
        eleccion = int( input('\n¿Qué cálculo quisieras hacer? '))
        while eleccion < min(opciones.keys()) or eleccion > max(opciones.keys()):
            eleccion = int( input('Respuesta inválida. Tenés que escribir un número entre {} y {}: '
            .format(min(opciones.keys()), max(opciones.keys()))))
        # # Ejecuta elección
        limpiar()
        if eleccion == 0:
            continuar = False
        else:
            operar(eval(opciones[eleccion]))

            # Pregunta si seguir
            print ('\n\n¿Querés seguir usando el programa?','0: No', '1: Sí', sep="\n     ")
            rta = int (input())
            if rta == 0:
                continuar = False
            else:
                limpiar()

# --- MAIN --- #

menu()
