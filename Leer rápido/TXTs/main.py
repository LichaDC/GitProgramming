import time # Delay
import os #Limpiar & File manipulation

def limpiar():
    os.system('cls')

def delay(t):
    time.sleep(t)

def intro(texto):
    limpiar()
    print ('-- Abriendo "{}" --'.format(texto.name[:texto.name.find('.')]))
    delay(1.5)
    limpiar()

    for i in range(3, 0, -1):
        print(i)
        delay(1)
        limpiar()

def elegir():
    print('¿Cuál quisieras leer?')
    print()
    libros = []
    elementos = os.listdir()
    for elemento in elementos:
        if elemento[-4:] == '.txt':
            libros.append(elemento)

    for libro in libros:
        print('[{}] {}'.format(libros.index(libro)+1, libro[:-4]))
    print()
    return libros[int( input( ))-1]

def velocidad():
    print('A qué velocidad querés leer? ( palabras / min )')
    return 60 / int( input( ))

def leer():
    palabras = texto.read().split()
    for palabra in palabras:
        limpiar()
        print (palabra)
        delay(t)

# --- MAIN --- #

t = velocidad()

texto = open(elegir(), 'r')

intro(texto)

leer()

texto.close()
