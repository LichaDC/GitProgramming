level = [['Dueño'], ['Produccion', 'Compras', 'Ventas']]

myIter = (level) # [[Dueño]]

for l in level:
    deepIter = iter(next(myIter)) # [Dueño]
    deepIter = iter(deepIter) # Dueño
    next(deepIter)

    for obj in l:
        print(obj, end=' ')
        print(next(deepIter))
    print("\n"*4)
