#! /bin/bash

# add execution permission to all script/shell files
chmod +x script*

# print output from each of them and append to output.csv
echo 'name    email    slack_username    biostack' > output.csv
for i in $(ls script*)
do
    ./$i | awk -F ',' '{print $1, $2, $3, $4}' >> output.csv
done