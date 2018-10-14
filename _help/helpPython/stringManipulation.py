word = "Hello World"

word[0]

len(word)

word.count('l')	# count how many times l is in the string

word.find("H") # find the word H in the string

word.index("World") # find the letters World in the string

word[:]

"."*10

word.replace("Hello", "Goodbye")

word.upper() # HELLO WORLD

word.lower() # hello world

word.title() # Hello World

word.capitalize() # Hello world

word.swapcase() # hELLO wORLD

reversed(word) dlroW olleH

word.strip()     #removes from both ends
word.lstrip()    #removes leading characters (Left-strip)
word.rstrip()    #removes trailing characters (Right-strip)

"Hello " + "World" + "!"

print ":".join(word)  # #add a : between every char

word.isalnum()         #check if all char are alphanumeric
word.isalpha()         #check if all char in the string are alphabetic
word.isdigit()         #test if string contains digits
word.istitle()         #test if string contains title words
word.isupper()         #test if string contains upper case
word.islower()         #test if string contains lower case
word.isspace()         #test if string contains spaces
word.endswith('d')     #test if string endswith a d
word.startswith('H')   #test if string startswith H
