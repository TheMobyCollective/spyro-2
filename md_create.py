import os
import re

root = 'src/overlays/'

for path, subdirs, files in os.walk(root):
    for dir in subdirs:
        filepath = 'progress/' + dir + '.md'
        with open(filepath, 'w') as writefile:
            for p, s, f in os.walk(os.path.join(path, dir)):
                for file in f:
                    with open(os.path.join(p, file), 'r') as readfile:
                        src = readfile.read()
                    writefile.write('<!-- ' + file + ' -->\n')
                    for f in re.findall(r'func_[^)]+', src):
                        writefile.write('- [ ] ' + f + '\n')
                    writefile.write('\n')
                writefile.close()
