
import os
from datetime import datetime

path = input("Enter the path to the folder: ")
now = datetime.now()
files = []


for p in os.listdir(path):

    if p.startswith("."):
        continue

    if os.path.isdir(p):
        for x in os.listdir(p):
            lm = datetime.fromtimestamp(os.stat(f"{p}/{x}").st_mtime)
            if (now - lm).days <= 1:
                files.append(x)
    else:
        lm = datetime.fromtimestamp(os.stat(p).st_mtime)
        if (now - lm).days <= 1:
            files.append(p)

print(files)
# ts = os.stat(path).st_mtime
# time = datetime.fromtimestamp(ts)

# print((datetime.now() - time).days)
# print(os.listdir(path))
# print(os.path.isdir)
