#!/bin/bash

#adding " at the end of each line
sed 's/$/",/' addresses.txt > new-ips.txt

#adding " att the beginning of each line
sed 's/^/"/' new-ips.txt > new-ips2.txt

#adding stuff at the beginnig of the file
#sed -i '1s/^/var adress = []; adress =[/' new-ips2.txt > address_list.js
sed  '1s/^/var adress = []; adress =[/' new-ips2.txt > new-ips3.txt

#remove last sign of last line of file
sed '$ s/.$//' new-ips3.txt > new-ips4.txt


#adding "];" at the end of the file
sed -e "\$a];" new-ips4.txt > adress_list.js

#removing temporary files
rm new-ips.txt
rm new-ips2.txt
rm new-ips3.txt
rm new-ips4.txt
