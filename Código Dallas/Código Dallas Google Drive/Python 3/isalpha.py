palabra = input("Escribe una palabra (Solo letras)")
if palabra.isalpha() and len(palabra)>0:
    print ("Muy bien")
else:
    print ("No es válido")
