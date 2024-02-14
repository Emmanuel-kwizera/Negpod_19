#!/bin/bash

# Select emails from student list and save in student-emails.txt
cut -d "," -f 2 students-list_1023.txt > student-emails.txt
