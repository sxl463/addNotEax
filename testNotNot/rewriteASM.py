#!/usr/bin/python

## Open the file with read only permit
#f = open('auth.S')

## Read the first line 
#line = f.readline()

## If the file is not empty keep reading line one at a time
## till the file is empty


import sys
# regular expressions
import re
import os
import fileinput

#\s+ : all white spaces ' '|\f|\t|\n|\v|\r
patternRET = re.compile("\s+"+"ret"+"[a-z\s+]?\n")
#patternMOV = re.compile("\s+"+"mov"+"[a-z\s+]?%*,*(e[bs]p)")

#mov movl movb movsbl
#patternMOV = re.compile("\s+"+"mov[a-z\s]+"+"%.*,.*(%*).*")
patternMOV = re.compile("\s+"+"mov.+%.+,.*\(.*\).*")
'''
for line in fileinput.input():
    print line
'''

'''
while line:
    print line
    line = f.readline()
f.close()
'''

def addNotNotToAssembly(file):
    
    with open(file, "r") as in_file:
        buf = in_file.readlines()

        new_buf = []
    with open(file+".new.txt", "w") as out_file:
        for line in buf:
            if patternRET.match(line):
                print line
                new_buf.append('	not	%eax\n')
                new_buf.append('	not	%eax\n');
                
            elif patternMOV.match(line):
                print line
                candidate_reg = re.search('%(.+?),', line)
                if candidate_reg:
                    reg = candidate_reg.group(1)
                    print reg
                    new_buf.append('	not	%'+reg+'\n')
                    new_buf.append('	not	%'+reg+'\n');
                
            new_buf.append(line)

        for line in new_buf:
            out_file.write(line)





print "Enter the location of the files: "; 
directory = os.getcwd()

path = r"%s" % directory

for file in os.listdir(path):
    if file.endswith(".s") or file.endswith(".S"):
        current_file = os.path.join(path, file)
        print current_file
        addNotNotToAssembly(file)

    else:
        continue
