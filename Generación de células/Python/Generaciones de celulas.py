import os

AA = int(input('Cantidad de AA para comenzar: '))
aa = int(input('Cantidad de aa para comenzar: '))
Aa = int(input('Cantidad de Aa para comenzar: '))
print()
generaciones = int(input('Cuantas generaciones querés analizar??: '))

def cambiarGeneracion(AA1, aa1, Aa1):

    AA2 = AA1 #
    aa2 = aa1 # Se le iguala a cada uno la gen anterior
    Aa2 = Aa1 #

    # Se suman los nuevos
    AA2 += (AA1 // 2) * (AA1 // 2) # AA + AA

    aa2 += (aa1 // 2) * (aa1 // 2) # aa + aa

    Aa2 += ((Aa1 // 2) * (Aa1 // 2)) // 2 #
    AA2 += ((Aa1 // 2) * (Aa1 // 2)) // 4 # Aa + Aa
    aa2 += ((Aa1 // 2) * (Aa1 // 2)) // 4 #


    Aa2 += (Aa1 * AA1) // 2 # Aa + AA
    AA2 += (Aa1 * AA1) // 2 #

    Aa2 += (Aa1 * aa1) // 2 # Aa + aa
    aa2 += (Aa1 * aa1) // 2 #

    Aa2 += (AA1 * aa1) # AA + aa

    return AA2, aa2, Aa2

def porcentajes(AA, aa, Aa):
    print('AA: {}%'.format(round(AA*100 / (AA + aa + Aa))))
    print('aa: {}%'.format(round(aa*100 / (AA + aa + Aa))))
    print('Aa: {}%'.format(round(Aa*100 / (AA + aa + Aa))))

os.system('cls')
print()
print('--- GENERACIÓN 0 ---')
print()
print('AA:', AA,)
print('aa:', aa,)
print('Aa:', Aa,)
porcentajes(AA, aa, Aa)

for i in range (1, generaciones+1):
    print()
    print ('--- GENERACIÓN', i, '---')
    print()
    AA, aa, Aa = (cambiarGeneracion(AA, aa, Aa))
    print('AA:', AA)
    print('aa:', aa)
    print('Aa:', Aa)
    print()
    porcentajes(AA, aa, Aa)
