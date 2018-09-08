import os, time
directory = os.getcwd()

folders = []
files = []

for entry in os.scandir(directory):
    print(entry.path)
    for entry in os.scandir(directory):
        print(entry.path)
        time.sleep(5)
    if entry.is_dir():
        folders.append(entry.path)
    elif entry.is_file():
        files.append(entry.path)

print('Folders:')
for f in folders:
    print(f)

print('Files')
for f in files:
    print(f)
# for dirpath, dirnames, filenames in os.walk(directory):
#     for dir in filenames:
#         if dir[-4:] == '.JPG' or dir[-4:] == '.jpg' or dir[-4:] == '.MPG' or dir[-4:] == '.mpg':
#             print(dir)
