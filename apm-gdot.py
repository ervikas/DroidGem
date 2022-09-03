
print('APMDL Graph Dot start')

import sys
import os
import time
import networkx as nx
from pathlib import Path

#gdot_path = "/home/cheewei/APM/gdot3"
gdot_path = "./gdot3"

# gdot parse error
files = Path(gdot_path).glob('*')
type_error_string1 = '/\\\\\\\\\\"'
for file in files:
    print('file: ', file)
    try:
        with open(file, 'r') as infile:
            filedata = infile.read()
        if type_error_string1 in filedata:
            filedata = filedata.replace(type_error_string1, 'err1')
            with open(file, 'w') as outfile:
                outfile.write(filedata)
    except:
        ex = sys.exc_info()[0]
        print("Error: %s" % ex)

files = Path(gdot_path).glob('*')
type_error_string2 = '/\\\\\\'
for file in files:
    #print('file: ', file)
    try:
        with open(file, 'r') as infile:
            filedata = infile.read()
        if type_error_string2 in filedata:
            filedata = filedata.replace(type_error_string2, 'err2')
            with open(file, 'w') as outfile:
                outfile.write(filedata)
    except:
        ex = sys.exc_info()[0]
        #print("Error: %s" % ex)

files = Path(gdot_path).glob('*')
type_error_string3 = '/  \\\\\\'
for file in files:
    #print('file: ', file)
    try:
        with open(file, 'r') as infile:
            filedata = infile.read()
        if type_error_string3 in filedata:
            filedata = filedata.replace(type_error_string3, 'err3')
            with open(file, 'w') as outfile:
                outfile.write(filedata)
    except:
        ex = sys.exc_info()[0]
        #print("Error: %s" % ex)

files = Path(gdot_path).glob('*')
type_error_string4 = '/    \\\\\\'
for file in files:
    #print('file: ', file)
    try:
        with open(file, 'r') as infile:
            filedata = infile.read()
        if type_error_string4 in filedata:
            filedata = filedata.replace(type_error_string4, 'err4')
            with open(file, 'w') as outfile:
                outfile.write(filedata)
    except:
        ex = sys.exc_info()[0]
        #print("Error: %s" % ex)

files = Path(gdot_path).glob('*')
type_error_string5 = '/ |  | \\\\\\'
for file in files:
    #print('file: ', file)
    try:
        with open(file, 'r') as infile:
            filedata = infile.read()
        if type_error_string5 in filedata:
            filedata = filedata.replace(type_error_string5, 'err5')
            with open(file, 'w') as outfile:
                outfile.write(filedata)
    except:
        ex = sys.exc_info()[0]
        #print("Error: %s" % ex)

print('APMDL Graph Dot end')

