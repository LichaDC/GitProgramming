class Auto:

    def __init__(self, color= "gris", asientos= 5, caja_automatica= False):
        self.color = color
        self.asientos = asientos
        self.caja_automatica = caja_automatica

    def acelerar(self):
        print ("El auto está acelerando")
    def frenar(self):
        print ("El auto está frenando")
    def aumentar_marcha(self):
        if (self.caja_automatica == False):
            print ("El auto aumentó un cambio")
    def disminuir_marcha(self):
        if self.caja_automatica == False:
            print ("El auto bajó un cambio")
    

auto_pequenio = Auto("Rojo", 2, True)

print (auto_pequenio.color)
print (auto_pequenio.asientos)
print (auto_pequenio.caja_automatica)
