import random
total = [0, 0]
r = [None]

max = 1000000
for i in range(1, max+1):
    r.append (random.randrange(2))
    print(r[i], ' - Vamos en el ', i)
    if r[i]:
        total[1] = total[1] + 1
    else:
        total[0] = total[0] + 1

print('En total hubo ', total[0], ' Ceros y ', total[1], ' Unos'  )
contDobles = [0, 0]
for i in range(1, max+1):
    if r[i-6] == 1 and r[i-5] == 0 and r[i-4] == 0 and r[i-3] == 0 and r[i-2] == 0 and r[i-1] == 0:
        if r[i] == 1:
            contDobles[1] = contDobles[1] + 1
        else:
            contDobles[0]  = contDobles[0]  + 1


print('Ceros: ', contDobles[0])
print('Unos: ', contDobles[1])

# 1 00000 1
# 1 00000 0
