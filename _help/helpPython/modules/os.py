import os

os.getcwd() # Current working directory

os.rename('name1.txt', 'name2.docx') # Change the name of the file

os.chdir('directory') # Change Current working directory

os.makedirs('directory') # Create the directory and all the intermediate directories

os.mkdir('directory') # Create the directory if it's in the same folder

os.removedirs('directory') # Deletes the full directory

os.stat('file') # Many information, as the size

os.listdir('directory') # Evey file and folder in the directory

os.path.join('directory', 'file') # Returns a str with the path with necessary slashs

os.path.basename('directory/file') # Returns only the file

os.path.split('directory/file') # List with directory in first position and file in the second

os.path.exists('directory') # Check if file/directory exists

os.path.isfile('file') # Check if exists the file

os.path.isdir('directory') # Check if exists the directory

os.path.splitext('directory/file') # List with directory and file name in first position and extension in the second

for dirpath, dirnames, filenames in os.walk('directory'): # Returns these 3 variables
