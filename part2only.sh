# usage: bash part2only.sh

echo The gender, years experience, and wage of the highest earner are: 
cat wages.csv |sed 1d |sort -t, -k 4| tail -n 1| cut -d "," -f 1,2,4

echo The gender, years experience, and wage of the lowest earner are:
cat wages.csv |sed 1d |sort -t, -k 4| head -n 1| cut -d "," -f 1,2,4

echo The number of females in the top ten earners is:
cat wages.csv |sed 1d |sort -t, -k 4| tail -n 10| grep 'female' | wc -l

