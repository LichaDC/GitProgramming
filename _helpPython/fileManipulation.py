# --- READ --- #
texto = open('fileManipulation-test.txt', 'r')
# r = read
# w = write
# a = appending
# r+ = read & write

texto.name # Nombre del archivo

texto.read() # Los primeros x char

texto.readline() # La primera linea, y al volver a usarlo, la siguiente

texto.readlines() # Lista con cada linea

texto.tell() # Int de la útlima posición leida

texto.seek() # Restaura la posición a 0

texto.close()

# --- WRITE --- #
file = open(“fileManipulation-test.txt”,”w”)

file.write(“Hello World”) 
file.write(“This is our new text file”)
file.write(“and this is another line.”)
file.write(“Why? Because we can.”)

file.close()
