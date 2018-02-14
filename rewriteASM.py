#!/usr/bin/python

## Open the file with read only permit
#f = open('auth.S')

## Read the first line 
#line = f.readline()

## If the file is not empty keep reading line one at a time
## till the file is empty


import sys
import re
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

with open(sys.argv[1], "r") as in_file:
    buf = in_file.readlines()

new_buf = []
with open("resultNotEax.s", "w") as out_file:
    for line in buf:
        if patternRET.match(line):
            print line
            new_buf.append('	not	%eax\n')
            new_buf.append('	not	%eax\n')
        new_buf.append(line);

        if patternMOV.match(line):
            print line





    for line in new_buf:
        out_file.write(line)
