# odt2txt
A small shell script that will convert a Open Document File (.odt) to a simple text file while preserving the rough formating of the file.

Feel free to check out the sister script txt2odt.sh on my profile :)

# Dependencies:
You need unzip, sed and a shell. Newest unzip, sed and shell version I tested on (Feel free to test it on other versions. However, the functionalities I used are so basic that this script should run on basically any version).

unzip version I tested on: world/unzip 6.0-20 (Artix repositories)

sed version I testet on: system/sed 4.9-3 (Artix repositories)

shell version I tested on: system/bash 5.2.021-1 (Artix repositories)

# Usage:
The first argument should be the input Open Document (.odt) file. The name for the text file will be the name of the first argument (including file format endings).

# Example (command line):

[shell_input] odt2txt example.odt && ls

[shell_output] example.odt example.odt.txt

# Roadmap and possibly errors:
Simply converting a Open Document file into a text file is quite nice especially only using such a small script. However, with added functionality in the form of flags this script could be doing a lot more without getting too bloated.

The only real source for errors I could imagine with this script is that the one directory that is created and then deleted afterwards is placed in the current working directory and not in any temporary folder. So if you happen to have a directory called odt2txt in your working directory then it will be deleted.

Some improvements I am looking to implement:

-Adding Flags that will let you specify extra characters to add so things like titles are better distinguished from paragraph text.

-Placing the temporarily created files and the directory in a sensible location.

-Adding support for tables.

-Feel free to suggest other improvements or bugs.
