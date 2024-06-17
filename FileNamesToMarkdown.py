from os import listdir
from os.path import isfile, join

mypath = "./Wallpapers"
files = [f for f in listdir(mypath) if isfile(join(mypath, f))]

def syntax(name, size):
    return f"<img src='{mypath}/{name}' width={size}%>"

for name in files:
    print(syntax(name, 70) + "\n")