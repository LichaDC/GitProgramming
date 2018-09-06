"""
    HACIENDO ESTO ME DI CUENTA DE MI CLARA
    NECESIDAD DE MANEJAR BASES DE DATOS
"""

class Elemento:

    def __init__(self, simbolo, nombre, prefijo, tipo, valencias, peso):
        self.simbolo   = simbolo
        self.nombre    = nombre
        self.prefijo   = prefijo
        self.tipo      = tipo
        self.valencias = valencias
        self.peso      = peso
# 1
H  = Elemento('H', 'Hidrógeno', '', 'Metal', [1], 1.00797)
# 2
He = Elemento('He', 'Helio', '',  'Gas Noble',[0], 4.0026)
# 3
Li = Elemento('Li','Litio', '', 'Metal', [1], 6.941)
# 4
Be = Elemento('Be', 'Berilio', '', 'Metal', [2], 9.0122)
# 5
B  = Elemento('B', 'Boro', '', 'No Metal', [3], 10.811)
# 6
C  = Elemento('C', 'Carbono', 'Carbon','No Metal', [2, 4], 12.0107)
# 7
N  = Elemento('N', 'Nitrógeno', 'Nitr', 'No Metal', [3, 5], 14.0067)
# 8
O  = Elemento('O', 'Oxígeno', '', 'No Metal', [2], 15.9994)
# 9
F  = Elemento('F', 'Flúor', '', 'No Metal', [1], 18.9984)
# 10
Ne = Elemento('Ne', 'Neón', '', 'Gas Noble', [0], 20.179)
# 11
Na = Elemento('Na', 'Sodio', '', 'Metal', [1], 22.989769)
# 12
Mg = Elemento('Mg', 'Magnesio', '', 'Metal', [2], 24.305)
# 13
Al = Elemento('Al', 'Aluminio', '', 'Metal', [3], 26.9815)
# 14
Si = Elemento('Si', 'Silicio', '', 'No Metal', [4], 28.086)
# 15
P  = Elemento('P', 'Fósforo', 'Fosfor', 'No Metal', [3,4,5], )
# 16
S  = Elemento('S', 'Azufre', 'No Metal')
# 17
Cl = Elemento('Cl', 'Cloro', 'No Metal')
# 18
Ar = Elemento('Ar', 'Argón', 'Gas Noble')
# 19
K  = Elemento('K', 'Potasio')
# 20
Ca = Elemento('Ca', 'Calcio')
# 21
Sc = Elemento('Sc', 'Escandio')
# 22
Ti = Elemento('Ti', 'Titanio')
# 23
V  = Elemento('V', 'Vanadio')
# 24
Cr = Elemento('Cr', 'Cromo')
# 25
Mn = Elemento('Mn', 'Manganeso')
# 26
Fe = Elemento('Fe', 'Hierro', 'Ferr', 'Metal', [2,3], 55.847)
# 27
Co = Elemento('Co', 'Covalto')
# 28
Ni = Elemento('Ni', 'Niquel')
# 29
Cu = Elemento('Cu', 'Cobre')
# 30
Zn = Elemento('Zn', 'Zinc')
# 31
Ga = Elemento('Ga', 'Galio')
# 32
Ge = Elemento('Ge', 'Germanio', 'No Metal')
# 33
As = Elemento('As', 'Arsénico', 'No Metal')
# 34
Se = Elemento('Se', 'Selenio', 'No Metal')
# 35
Br = Elemento('Br', 'Bromo', 'No Metal')
# 36
Kr = Elemento('Kr', 'Kriptón', 'Gas Noble')
