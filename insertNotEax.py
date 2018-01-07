## Open the file with read only permit
#f = open('auth.S')

## Read the first line 
#line = f.readline()

## If the file is not empty keep reading line one at a time
## till the file is empty

'''
while line:
    print line
    line = f.readline()
f.close()
'''

with open("auth.S", "r") as in_file:
    buf = in_file.readlines()

with open("auth.addecx.S", "w") as out_file:
    for line in buf:
        if line == "; Include this text\n":
            line = line + "Include below\n"
        out_file.write(line)
