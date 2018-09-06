from PIL import Image
import os, time

months = {
'01': '01 Enero',
'02': '02 Febrero',
'03': '03 Marzo',
'04': '04 Abril',
'05': '05 Mayo',
'06': '06 Junio',
'07': '07 Julio',
'08': '08 Agosto',
'09': '09 Septiembre',
'10': '10 Octubre',
'11': '11 Noviembre',
'12': '12 Diciembre'
}

scheme = "'IMG-{} {} {} - {}.JPG'.format(d[0], d[1], d[2], f'{i:04}')"

def monthToNum(shortMonth):
    return{
            'Jan' : '01',
            'Feb' : '02',
            'Mar' : '03',
            'Apr' : '04',
            'May' : '05',
            'Jun' : '06',
            'Jul' : '07',
            'Aug' : '08',
            'Sep' : '09',
            'Oct' : '10',
            'Nov' : '11',
            'Dec' : '12'
    }[shortMonth]

def date(path):
    try:
        img = Image.open(path)
        info = img._getexif()[36867]
        info = info.replace(':', ' ')
        info = info.split()
    except:
        date = int(os.path.getmtime(path))
        info = time.ctime(date)
        info = info.replace(':', ' ')
        info = info.split()
        info.remove(info[0])
        info.insert(0, info[5])
        info.pop()
        info[1] = monthToNum(info[1])
    return info

def newer(path1, path2): # is path1 newer than path2 ?
    d1 = date(path1)
    d2 = date(path2)
    if d1[3] == d2[3]: # Same hour
        if d1[4] == d2[4]: # Same minute
            if d1[5] >= d2[5]: # Compare seconds
                if d1[5] == d2[5]:
                    return False
                else:
                    return True
            else:
                return False
        else: # Diferent minute
            if d1[4] > d2[4]: # Compare minutes
                return True
            else:
                return False
    else: # Diferent hours
        if d1[3] > d2[3]: # Compare hours
            return True
        else:
            return False


def moveToDir(path, file):
    pathFile = os.path.join(path, file)
    d = date(pathFile)
    if not os.getcwd().endswith('/{}/{}'.format(d[0], months[d[1]])): # Check if the file is not in the right directory
        if not os.path.isdir(os.path.join(directory, d[0], months[d[1]])): # Check if the righ directory doesn't exist
            print('[ ■ ] - I created the directory', os.path.join(d[0], months[d[1]]))
            os.makedirs(os.path.join(directory, d[0], months[d[1]])) # Creates the directory
        i = 1
        while True:
            if not os.path.isfile(os.path.join(directory, d[0], months[d[1]],(eval(scheme)))): # Check if temporal name is not taken
                print('[ → ] MOV - I renamed', file, '       by       ', (eval(scheme)))
                os.rename(pathFile, os.path.join(directory, d[0], months[d[1]], (eval(scheme)))) # Rename the file to the temporal name
                break
            else:
                i += 1

def changeName(path, file):
    pathFile = os.path.join(path, file)
    d = date(pathFile)
    i = 1
    while True:
        correctName = os.path.join(path, eval(scheme))
        if not os.path.isfile(correctName): # Check if doesn't exists a file with the correct name.
            print('[ → ] - I renamed', file, '       by       ', eval(scheme))
            os.replace(pathFile, correctName)
            break
        elif correctName == pathFile:
            pass
            break
        else:
            if newer(correctName, pathFile): # Check if it's older than the correct named file. (correctName is newer)
                j = 1
                while True:
                    if not os.path.isfile(os.path.join(path, '{}-{}.JPG'.format(eval(scheme)[:-4], j))): # Check if the temporal name doesn't exist
                        print('[ → ] - I renamed', eval(scheme), '       by        {}-{}.JPG'.format(eval(scheme)[:-4], j))
                        os.replace(correctName, os.path.join(path, '{}-{}.JPG'.format(eval(scheme)[:-4], j))) # Give temporal name to the correct named file
                        global unordered
                        unordered = True
                        break
                    j += 1
                print('[ → ] - I renamed', file, '       by       ', eval(scheme))
                os.replace(pathFile, correctName)
                break
            else:
                i += 1


# --- MAIN --- #

directory = os.getcwd()

for dirpath, dirnames, filenames in os.walk(directory):
    for dir in filenames:
        if dir[-4:] == '.JPG' or dir[-4:] == '.jpg':
            moveToDir(dirpath, dir)
print()
print("| ----- - -----[       Everyone it's  in its folder       ]----- - ----- |")


unordered = True
while unordered:
    unordered = False
    for dirpath, dirnames, filenames in os.walk(directory):
        for dir in filenames:
            if dir[-4:] == '.JPG' or dir[-4:] == '.jpg':
                if not unordered:
                    changeName(dirpath, dir)
print()
print("| ----- - -----[     Every photo has the correct name     ]----- - ----- |")


for dirpath, dirnames, filenames in os.walk(directory):
    if not filenames and not dirnames:
        os.removedirs(dirpath)
        print('[ X ] - I deleted the folder', dirpath)
print()
print("| ----- - -----[   Every empty folder have been deleted   ]----- - ----- |")


print()
print()
print("| ----- - -----[        I FINISHED. IT'S ALL RIGHT        ]----- - ----- |")
