# htmlCleaning
A simple script to clean html from a set of files.

This repository contains one bash script file, `clean-and-compress-profiles.sh`.  This script creates a singular org chart from a set of html files.  

The script uses a piped bash statement, relying on `sed` and `tac`. While `sed` has a functionality to pipe within a single command, deleting the beginning lines requires use of the pipe (`|`) and re-executing `sed`. 

Line 6 shows a simple method to remove the tail n-lines of a file, where n is a known number (not dynamic). 
