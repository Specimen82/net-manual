#!/bin/bash
read -p 'Choose section:
	(1) User comands
	(2) System calls
	(3) Library functions
	(4) Special files
	(5) File formats
	(6) Games
	(7) Conventions and miscellany
	(8) Administration and privileged commands
	(L) Math library functions
	(N) Tcl functions
> ' section
read -p 'Command:
> ' cmd
read -p 'Filter:
> ' spattern
if test "$spattern" = ""
then
	w3m http://linux.die.net/man/$section/$cmd | less
else
	w3m http://linux.die.net/man/$section/$cmd | grep $spattern | less
fi
