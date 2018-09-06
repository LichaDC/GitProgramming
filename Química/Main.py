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
H  = Elemento('H' , 'Hidrógeno', ''      , 'Metal'    , [1]        ,  1.00797)
# 2
He = Elemento('He', 'Helio'    , ''      , 'Gas Noble', [0]         ,  4.0026 )
# 3
Li = Elemento('Li','Litio'     , ''      , 'Metal'    , [1]        ,  6.941  )
# 4
Be = Elemento('Be', 'Berilio'  , ''      , 'Metal'    , [2]        ,  9.0122 )
# 5
B  = Elemento('B' , 'Boro'     , ''      , 'No Metal' , [3]        , 10.811  )
# 6
C  = Elemento('C' , 'Carbono'  , 'Carbon','No Metal'  , [2, 4]     , 12.0107 )
# 7
N  = Elemento('N' , 'Nitrógeno', 'Nitr'  , 'No Metal' , [3, 5]     , 14.0067 )
# 8
O  = Elemento('O' , 'Oxígeno'  , ''      , 'No Metal' , [2]        , 15.9994 )
# 9
F  = Elemento('F' , 'Flúor'    , ''      , 'No Metal' , [1]        , 18.9984 )
# 10
Ne = Elemento('Ne', 'Neón'     , ''      , 'Gas Noble', [0]        , 20.179  )
# 11
Na = Elemento('Na', 'Sodio'    , ''      , 'Metal'    , [1]        , 22.98976)
# 12
Mg = Elemento('Mg', 'Magnesio' , ''      , 'Metal'    , [2]        , 24.305  )
# 13
Al = Elemento('Al', 'Aluminio' , ''      , 'Metal'    , [3]        , 26.9815 )
# 14
Si = Elemento('Si', 'Silicio'  , ''      , 'No Metal' , [4]        , 28.086  )
# 15
P  = Elemento('P' , 'Fósforo'  , 'Fosfor', 'No Metal' , [3,4,5]    , 30.9738 )
# 16
S  = Elemento('S' , 'Azufre'   , 'Sulfur', 'No Metal' , [2,4,6]    , 32.064  )
# 17
Cl = Elemento('Cl', 'Cloro'    , 'Clor'  , 'No Metal' , [1,3,5,7]  , 35.453  )
# 18
Ar = Elemento('Ar', 'Argón'    , ''      , 'Gas Noble', [0]        , 39.948  )
# 19
K  = Elemento('K' , 'Potasio'  , ''      , 'Metal'    , [1]        , 39.098  )
# 20
Ca = Elemento('Ca', 'Calcio'   , ''      , 'Metal'    , [2]        , 40.08   )
# 21
Sc = Elemento('Sc', 'Escandio' , ''      , 'Metal'    , [3]        , 44.956  )
# 22
Ti = Elemento('Ti', 'Titanio'  , 'Titan' , 'Metal'    , [2,3,4]    , 47.90   )
# 23
V  = Elemento('V' , 'Vanadio'  , 'Vanad' , 'Metal'    , [2,3,4,5]  , 50.942  )
# 24
Cr = Elemento('Cr', 'Cromo'    , 'Crom'  , 'Metal'    , [2,3,4,5,6], 51.996  )
# 25
Mn = Elemento('Mn', 'Manganeso', 'Mangan', 'Metal'    , [2,3,4,6,7], 54.938  )
# 26
Fe = Elemento('Fe', 'Hierro'   , 'Ferr'  , 'Metal'    , [2,3]      , 55.847  )
# 27
Co = Elemento('Co', 'Cobalto'  , 'Cobalt', 'Metal'    , [2,3]      , 58.93   )
# 28
Ni = Elemento('Ni', 'Niquel'   , 'Niquel', 'Metal'    , [2,3]      , 58.71   )
# 29
Cu = Elemento('Cu', 'Cobre'    , 'Cupr'  , 'Metal'    , [1,2]      , 63.54   )
# 30
Zn = Elemento('Zn', 'Zinc'     , ''      , 'Metal'    , [2]        , 65.37   )
# 31
Ga = Elemento('Ga', 'Galio'    , ''      , 'Metal'    , [3]        , 69.72   )
# 32
Ge = Elemento('Ge', 'Germanio' , ''      , 'No Metal' , [4]        , 72.59   )
# 33
As = Elemento('As', 'Arsénico' , 'Arsen' , 'No Metal' , [3,5]      , 74.922  )
# 34
Se = Elemento('Se', 'Selenio'  , 'Seleni', 'No Metal' , [2,4,6]    , 78.96   )
# 35
Br = Elemento('Br', 'Bromo'    , 'Brom'  , 'No Metal' , [1,3,5,7]  , 79.909  )
# 36
Kr = Elemento('Kr', 'Kryptón'  , ''      , 'Gas Noble', [0]        , 83.80   )

def oxidos(self):
    if self.tipo == 'Metal' or self.tipo == 'No Metal':
        oxidos = []
        for valencia in self.valencias:
            oxido = []
            # FÓRMULA.
            if   valencia % 2 != 0:
                oxido.append('{}2O{}'.format(self.simbolo, valencia))
            elif valencia == 2:
                oxido.append('{}O'   .format(self.simbolo))
            else:
                oxido.append('{}O{}' .format(self.simbolo, int(valencia/2)))

            # NOMBRE.
            if   len(self.valencias) == 1:
                oxido.append('Óxido de {}'.format(self.nombre))

            elif len(self.valencias) == 2:
                if self.valencias.index(valencia) == 0:
                    oxido.append('Óxido {}oso'.format(self.prefijo))
                else:
                    oxido.append('Óxido {}ico'.format(self.prefijo))

            elif len(self.valencias)  > 2:
                if   self.valencias.index(valencia) == 0:
                    oxido.append('Óxido hipo{}oso'.format(self.prefijo))
                elif self.valencias.index(valencia) == 1:
                    oxido.append('Óxido {}oso'.format(self.prefijo))
                elif self.valencias.index(valencia) == 2:
                    oxido.append('Óxido {}ico'.format(self.prefijo))
                else:
                    oxido.append('Óxido per{}ico'.format(self.prefijo))

            oxidos.append(oxido)
        return (oxidos)
    else:
        return 'Es un Gas Noble'


def acidos(self):
    acidos = []
    for valencia in self.valencias:
        acido = []
        if   self.tipo == 'Metal':
        # Fórmula.
            if   valencia >  1:
                acido.append('{}(OH){}'.format(self.simbolo, valencia))
            elif  valencia == 1:
                acido.append('{}(OH)'  .format(self.simbolo))
        # Nombre.
            if   len(self.valencias) == 1:
                acido.append('Hidróxido de', self.nombre)
            elif len(self.valencias) == 2:
                if self.valencias.index(valencia) == 1:
                    acido.append('Hidróxido {}oso'.format(self.prefijo))
                else:
                    acido.append('Hidróxido {}ico'.format(self.prefijo))
            else:
                if   self.valencias.index(valencia) == 1:
                    acido.append('Hidróxido hipo{}oso'.format(self.prefijo))
                elif self.valencias.index(valencia) == 2:
                    acido.append('Hidróxido {}oso'    .format(self.prefijo))
                if self.valencias.index(valencia) == 3:
                    acido.append('Hidróxido {}ico'    .format(self.prefijo))
                else:
                    acido.append('Hidróxido per{}ico' .format(self.prefijo))

        elif self.tipo == 'No Metal':
        # Formula.
            if   valencia == 2:
                acido.append('H2{}O2' .format(self.simbolo))
            elif valencia % 2 == 0:
                acido.append('H2{}O{}'.format(self.simbolo, int((valencia/2)+1)))
            elif valencia % 2 != 0:
                acido.append('H{}O{}' .format(self.simbolo, int((valencia+1)/2)))
        # Nombre.
            if   len(self.valencias) == 1:
                acido.append('Ácido de', self.nombre)
            elif len(self.valencias) == 2:
                if self.valencias.index(valencia) == 0:
                    acido.append('Ácido {}oso'.format(self.prefijo))
                else:
                    acido.append('Ácido {}ico'.format(self.prefijo))
            else:
                if   self.valencias.index(valencia) == 0:
                    acido.append('Ácido hipo{}oso'.format(self.prefijo))
                elif self.valencias.index(valencia) == 1:
                    acido.append('Ácido {}oso'    .format(self.prefijo))
                if self.valencias.index(valencia) == 2:
                    acido.append('Ácido {}ico'    .format(self.prefijo))
                else:
                    acido.append('Ácido per{}ico' .format(self.prefijo))

        else:
            acidos ='Es un Gas Noble'
        acidos.append(acido)
    return acidos
elementos = {
 1: 'H' ,
 2: 'He',
 3: 'Li',
 4: 'Be',
 5: 'B' ,
 6: 'C' ,
 7: 'N' ,
 8: 'O' ,
 9: 'F' ,
10: 'Ne',
11: 'Na',
12: 'Mg',
13: 'Al',
14: 'Si',
15: 'P' ,
16: 'S' ,
17: 'Cl',
18: 'Ar',
19: 'K' ,
20: 'Ca',
21: 'Sc',
22: 'Ti',
23: 'V' ,
24: 'Cr',
25: 'Mn',
26: 'Fe',
27: 'Co',
28: 'Ni',
29: 'Cu',
30: 'Zn',
31: 'Ga',
32: 'Ge',
33: 'As',
34: 'Se',
35: 'Br',
36: 'Kr'
}

# --- MAIN --- #
for i in range (1, 37):
    print(acidos(elementos[i]))
