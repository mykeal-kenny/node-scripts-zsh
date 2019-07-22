import os
import json
import sys

# remove after testing
testdir = "/Users/fireinjun/Work/yac-desktop"
pkg = "package.json"
# obj = json.load(d)
os.chdir(testdir)

with open(os.path.join(sys.path[0], pkg), "r") as f:
    arr = json.load(f)
    scripts = arr["scripts"]
    scriptList = list(scripts.keys())
    for script in scriptList:
        print(script)

# print(slist)
