class Auto:

    color = "gris"
    asientos = 5
    caja_automatica = False

    def acelerar(self):
        print ("El auto est� acelerando")
    def frenar(self):
        print ("El auto est� frenando")
    def aumentar_marcha(self):
        if (self.caja_automatica == False):
            print ("El auto aument� un cambio")
    def disminuir_marcha(self):
        if self.caja_automatica == False:
            print ("El auto baj� un cambio")
    

auto_comun = Auto()
auto_comun.aumentar_marcha()

auto_tesla = Auto()
auto_tesla.caja_automatica = True
auto_tesla.aumentar_marcha
