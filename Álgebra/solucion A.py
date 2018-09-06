OPERATORS = {'+': 'add', '-': 'sub', '*': 'mul', '/': 'div'}

def apply_operator(a, op, b):

    method = '__%s__' % OPERATORS[op]
    return getattr(b, method)(a)


print (apply_operator(1, '-', 3))
