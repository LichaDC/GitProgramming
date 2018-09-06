import PyPDF2
import time # Delay
import os #Limpiar & File manipulation

def limpiar():
    os.system('cls')


def delay(t):
    time.sleep(t)


def velocidad():
    print('A qué velocidad querés leer? ( palabras / min )')
    return 60 / int( input( ))


def comienzo():
    print('Desde qué página querés arrancar?')
    return int( input( ))


def elegir():
    print('¿Cuál quisieras leer?')
    print()
    libros = []
    elementos = os.listdir() # Create a list of the files in the same folder.
    # Save only the PDFs.
    for elemento in elementos:
        if elemento[-4:] == '.pdf':
            libros.append(elemento)
    # Show the avaible books.
    for libro in libros:
        print('[{}] {}'.format(libros.index(libro)+1, libro[:-4]))
    print()
    return libros[int( input( ))-1] # Return name of the selected book


def intro():
    limpiar()
    print ('-- Abriendo "{}" --'.format(texto.name[:texto.name.find('.')]))
    delay(1.5)
    limpiar()

    for i in range(3, 0, -1):
        print(i)
        delay(1)
        limpiar()


def leer():
    fileReader = PyPDF2.PdfFileReader(texto) # Open the PDF
    limpiar()
    # Create list of text converted by the objets. (Each string is a page of the book).
    paginas = []
    for i in range(comienzo-1, fileReader.numPages):
        paginas.append(fileReader.getPage(i).extractText().strip())

        for pagina in paginas: # Turn pages of the book.
            print ('[ - - - - - PAGINA N°', paginas.index(pagina)+comienzo, '- - - - - ]', end='\n'*2)
            delay(2)
            palabras = pagina.split() # Split the page in words
            # Prints each word.
            for palabra in palabras:
                limpiar()
                print (palabra)
                delay(t)
            delay(3) # Wait after finished the page
    print('FIN')

# --- MAIN --- #

t = velocidad() # Pide velocidad de lectura.

texto = open(elegir(), 'rb') # Elige el libro que quiere leer.

comienzo = comienzo() # Elige de qué pagina arrancar

intro() # Cuenta regresiva

leer() # Empieza la lectura

texto.close()
