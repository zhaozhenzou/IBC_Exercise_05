# Usage: bash exercise05.sh

# Task #1: write a file containing all unique gender-year of experience combination in wages.csv

cat wages.csv | grep -v "gender"| cut -d, -f 1,2 | sort -t "," -k1,1 -k2,2n | tr "," " " | uniq > gender_year.txt


# Task #2: highest earner, lowest earner and number of females in top ten earners


# Task #3: the effect of graduating college on minimum wage for earners in the dataset

min_wage12=$(cat wages.csv | grep -E "^[a-z]+,[0-9]+,12," | sort -t , -k 4 -n | head -n 1 | cut -d, -f 4)
min_wage16=$(cat wages.csv | grep -E "^[a-z]+,[0-9]+,16," | sort -t , -k 4 -n | head -n 1 | cut -d, -f 4)
echo "The difference of minimum wages for those who graduated college and those who did not is:"
echo "$min_wage16 - $min_wage12" | bc


 

