# Display the name of each data file and count
# the number of distinct occurrences of each species
# in that file
for f in data/*.txt

do 
    date
    echo $filename
    grep -v Species $filename | cut -d, -f2 | sort | uniq -c | sort -n -r
done
