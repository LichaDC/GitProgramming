class Circulo:

    _pi = 3.14 #Se le pone el _ para indicar que es una constante (convension)

    def __init__(self, radio):
        self.radio = radio
    def area(self):
        return self.radio**2 * self.pi

circulo_1 = Circulo(7)
circulo_2 = Circulo(9)

