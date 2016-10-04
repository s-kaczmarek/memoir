#!/usr/bin/env python3

import time
import os
import sys

def help():
    print ("memoir is a minimal diary")
    print ("run script with arguments:")
    print ("    -r  to read notes")
    print ("    -c  to clear notes file")
    print ("    -h  for help")

# add the current local time to the entry header
lines = [ time.asctime() + '\n' + '------------------------\n' + '\n' ]

if len(sys.argv) >= 2:
    if sys.argv[1] == '-r':
        # read .memoir file
        os.system('cat ~/.memoir')
        print('\n')
        exit(0)

    if sys.argv[1] == '-h':
        # print help
        help()
        exit(0)

    if sys.argv[1] == '-c':
        # clear .memoir file
        os.system('> ~/.memoir')
        exit(0)

    else:
        print("invalid argument, type m -h for help")
        exit(0)

if len(sys.argv) > 1 and len(sys.argv) != 2:
    lines.append( ' '.join(sys.argv[ 1: ]))
    lines[-1] += '\n'
else:
    while 1:
        try:
            line = input()
        except EOFError:
            break

        # get more user input until an empty line
        if len( line ) == 0:
            break
        else:
            lines.append( line + '\n' )


# only write the entry if the user entered something
if len( lines ) > 1:
    memoir_path = os.path.expanduser( '~/.memoir' )

    # prepend a seperator only if the file exists ( there are entries already in there )
    if os.path.exists( memoir_path ):
        lines.insert(0, '\n------------------------\n')

    with open( memoir_path, 'a' ) as f:
        f.writelines( lines )
