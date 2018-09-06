# Devuelve el str convertido float o int, si puede
def convert(var):
    try:
        var = float(var)
        var = int  (var) if var %1 == 0 else var
    except ValueError:
        pass
    return var

# Evalua si cumple con la condición, y devuelve la variable para Números
def evaluarN(condicion, pedido):
    while True:
        var = convert(input(pedido))
        if isinstance(var, int) or isinstance(var, float):
            while not eval(condicion):
                print(' ( ! ) Respuesta inválida, intente de nuevo.\n')
                var = convert(input(pedido))
                if isinstance(var, int) or isinstance(var, float):
                    pass
                else:
                    break
            if isinstance(var, int) or isinstance(var, float):
                return var
            else:
                pass
        else:
            pass
        print(' ( ! ) Respuesta inválida, intente de nuevo.\n')

# Evalua si cumple con la condición, y devuelve la variable para Strings
def evaluarS(condicion, pedido):
    while True:
        var = convert(input(pedido))
        if isinstance(var, str):
            while not eval(condicion):
                print(' ( ! ) Respuesta inválida, intente de nuevo.\n')
                var = convert(input(pedido))
                if isinstance(var, str):
                    pass
                else:
                    break
            if isinstance(var, str):
                return var
            else:
                pass
        else:
            pass
        print(' ( ! ) Respuesta inválida, intente de nuevo.\n')


print(evaluarN('var > 3', 'Un número mayor que 3'))
