# run as sed -rf teacher.sed dates.txt
s/([0-9]+)[-\/\.]([0-9]+)[-\.\/]([0-9]+)/\1.\2.\3/g
