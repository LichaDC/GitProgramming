def decimalTo(base, decimal):
    transformed = ''
    while decimal > 0:
        transformed = transformed + str(decimal % base)
        decimal = decimal // base
    return transformed[::-1]
print(decimalTo(2, 30))

'''
30 | 0
15 | 1
 7 | 1
 3 | 1
 1 | 1
 0
'''
