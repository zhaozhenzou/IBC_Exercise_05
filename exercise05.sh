# Usage: bash exercise05.sh

# Task #1: write a file containing all unique gender-year of experience
# combination in wages.csv

cat wages.csv | grep -v "gender"| cut -d, -f 1,2 | sort -t "," -k1,1 -k2,2n | tr "," " " | uniq > gender_year.txt

 

