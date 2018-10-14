myList = [1, 2, 3, 4]

# get an iterator using iter()
myIter = iter(myList)

# iterate through it using next()
print(next(myIter))
print(next(myIter))

# next(obj) is same as obj.__next__()
print(myIter.__next__())
print(myIter.__next__())


# This will raise error, no items left
next(myIter)
