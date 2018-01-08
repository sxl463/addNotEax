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

new_buf = []
with open("auth.addecx.S", "w") as out_file:
    for line in buf:
        if "ret" in line:
            print line
            new_buf.append('	not	%eax\n')
            new_buf.append('	not	%eax\n')
        new_buf.append(line);

    for line in new_buf:
        out_file.write(line)
