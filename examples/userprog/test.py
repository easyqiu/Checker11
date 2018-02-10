#!/usr/bin/env python
# coding: utf-8
  
from util import *

def run(cmd):
    print cmd
    #os.system(cmd)

    found = False
    while not found:
        output = os.popen(cmd)
        for i, line in enumerate(output.read().split("\n")):
            if "data" in line:
                print i, line
            if "data: 42, 42" in line:
                print "found", line
                found = True
                break

if __name__ == "__main__":
    cmd = "./a.out"
    run(cmd)
