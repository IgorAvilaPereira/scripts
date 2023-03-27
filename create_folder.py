import os

entries = os.listdir('.')

for e in entries:
    # print(e)    
    os.system("mkdir "+e.split(".")[0])
    # os.mkdir(e)    