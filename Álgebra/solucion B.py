from operator import sub, add, truediv, mul
import re

def string_eval(str_):
     operators = {'-': sub, '+': add, '/': truediv, '*': mul}
     pattern = re.compile(r'(.*?)\s*([*\/+-])\s*(.*)')
     splited = re.search(pattern, str_).groups()
     if len(splited) == 3:
         a, ope, b = splited
         val_a = globals()[a]
         val_b = globals()[b]
         return operators[ope](val_a, val_b)

a = 5
b = 3
print (string_eval('a - b'))
print (string_eval('a * b'))
