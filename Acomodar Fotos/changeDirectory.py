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

schemeP = "'IMG-{} {} {} - {}.JPG'.format(d[0], d[1], d[2], f'{i:04}')"
schemeV = "'IMG-{} {} {} - {}.MPG'.format(d[0], d[1], d[2], f'{i:04}')"

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

def moveToDirPhoto(path, file):
    pathFile = os.path.join(path, file)
    d = date(pathFile)
    if not os.getcwd().endswith('/{}/{}'.format(d[0], months[d[1]])): # Check if the file is not in the right directory
        if not os.path.isdir(os.path.join(directory, d[0], months[d[1]])): # Check if the righ directory doesn't exist
            print('[ ■ ] - I created the directory', os.path.join(d[0], months[d[1]]))
            os.makedirs(os.path.join(directory, d[0], months[d[1]])) # Creates the directory
        i = 1
        while True:
            if not os.path.isfile(os.path.join(directory, d[0], months[d[1]],(eval(schemeP)))): # Check if temporal name is not taken
                print('[ → ] MOV - I renamed', file, '       by       ', (eval(schemeP)))
                os.rename(pathFile, os.path.join(directory, d[0], months[d[1]], (eval(schemeP)))) # Rename the file to the temporal name
                break
            else:
                i += 1

def moveToDirVideo(path, file):
    pathFile = os.path.join(path, file)
    d = date(pathFile)
    if not os.getcwd().endswith('/{}/{}'.format(d[0], months[d[1]])): # Check if the file is not in the right directory
        if not os.path.isdir(os.path.join(directory, d[0], months[d[1]])): # Check if the righ directory doesn't exist
            print('[ ■ ] - I created the directory', os.path.join(d[0], months[d[1]]))
            os.makedirs(os.path.join(directory, d[0], months[d[1]])) # Creates the directory
        i = 1
        while True:
            if not os.path.isfile(os.path.join(directory, d[0], months[d[1]],(eval(schemeV)))): # Check if temporal name is not taken
                print('[ → ] MOV - I renamed', file, '       by       ', (eval(schemeV)))
                os.rename(pathFile, os.path.join(directory, d[0], months[d[1]], (eval(schemeV)))) # Rename the file to the temporal name
                break
            else:
                i += 1


# --- MAIN --- #

directory = os.getcwd()

for dirpath, dirnames, filenames in os.walk(directory):
    for dir in filenames:
        if dir[-4:] == '.JPG' or dir[-4:] == '.jpg':
            moveToDirPhoto(dirpath, dir)
print()
print("| ----- - -----[       Every photo is in its folder       ]----- - ----- |")


for dirpath, dirnames, filenames in os.walk(directory):
    for dir in filenames:
        if dir[-4:] == '.MPG' or dir[-4:] == '.mpg':
            moveToDirVideo(dirpath, dir)
print()
print("| ----- - -----[       Every video is in its folder       ]----- - ----- |")

for dirpath, dirnames, filenames in os.walk(directory):
    if not filenames and not dirnames:
        os.removedirs(dirpath)
        print('[ X ] - I deleted the folder', dirpath)
print()
print("| ----- - -----[   Every empty folder have been deleted   ]----- - ----- |")
