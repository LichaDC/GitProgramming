import random

print (random.randint(0,10))


participantes = ["Lisandro", "Marco", "Joaquín", "Manuel"]
       
ganador = random.choice(participantes)
print ("El ganador es:", ganador)

lista_numeros = [1,2,3,4,5,6,7,8,9,10]
print (lista_numeros)
random.shuffle(lista_numeros)
print (lista_numeros)
