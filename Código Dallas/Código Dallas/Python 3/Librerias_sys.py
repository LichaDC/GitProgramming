import sys
import time

for i in range(100):
    time.sleep(0.5)
    sys.stdout.write("\r%d" %i) #print sin print()
    sys.stdout.flush()
#noMeFunka
