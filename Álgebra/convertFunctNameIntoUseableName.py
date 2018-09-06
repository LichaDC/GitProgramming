palabra = "holaMiNombreEsGerman"
contador = 0
mayusculas = []
for letra in palabra:
    mayusculas.append(contador) if letra.isupper() else None
    contador += 1

contador = 0
for mayus in mayusculas:
    palabra = palabra[:mayus+contador] + ' ' + palabra[mayus+contador:]
    contador += 1


palabra = palabra[0].upper()+ palabra[1:]

print (palabra)
