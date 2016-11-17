# memoir

memoir is a shell script written in python which is minimal diary for making quick notes while working in terminal.
This is a fork of original memoir written by thomasdziedzic  
link to original repository: https://github.com/thomasdziedzic/memoir  
I found this idea very useful, but I missed function of reading notes by running memoir with argument, and quick deleting all notes

## Installation

* download repository and unzip it in any location you like
* open terminal in location of repository files
* type in terminal:

```
sudo bash install.sh
```

* to run script type in terminal:

```
m
```

## Uninstallation

* open terminal in location of repository files
* type in terminal:

```
sudo bash uninstall.sh
```

* uninstall.sh script will delete all files installed previously

## How it works

* script is installed in ```/usr/local/bin/``` location as ```m``` file.
* you can run script by typing ```m``` in termianl.
* after first run script will create .memoir file in your user home directory ```~/.memoir``` which will store all notes.
* when the cript is running you can make your notes untill you press enter twice. After that, note will be saved and program ends. If the first line is empty, it wont write the entry.
* run script with -r argument to read notes: ```m -r```
* run script with -c argument to clear notes file: ```m -c```
* run script with -h argument for help: ```m -h```

## Dependencies

- python3
- cat

best regards,  
Sławek Kaczmarek
