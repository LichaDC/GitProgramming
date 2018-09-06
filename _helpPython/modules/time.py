import time


secs = time.time() # Number of ticks since 12:00am, January 1, 1970 ("The Epoch")

tupleTime = time.localtime(secs) # Convert from second to time-tuple


time.asctime(tupleTime) # EG: Sun Aug 19 16:16:16 2018

time.ctime(secs) # EG: Sun Aug 19 16:30:38 2018

time.gmtime(secs) # tupleTime of the current moment with the UTC time = 0

time.localtime(secs) # tupleTime of the current moment with your local UTC time

time.mktime(tupleTime) # tupleTime to secs

time.sleep(s) # Delay of s seconds
