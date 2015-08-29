#Run this in the folder containing all of the HaMStR fa_dir folders to make a fasta file for each orthology group
#NOTE: Unless you're using a core ortholog set with the exact names as below, you will need to change the sed commands to
# match your core orthologs
find -iname [0-9]\*.fa | xargs -i awk '{newfile=gensub( /.*\/([^\/]+)/, "\\1",1,FILENAME); print $0 >> "./"newfile  }' {}

sed -i '/|MGEN|....|/ s/|MGEN|/|/' *.fa

sed -i '0,/|BABY|/s//|BABY-keep|/' *.fa
sed -i '0,/|CAST|/s//|CAST-keep|/' *.fa
sed -i '0,/|CJET|/s//|CJET-keep|/' *.fa
sed -i '0,/|EDUN|/s//|EDUN-keep|/' *.fa
sed -i '0,/|PBAC|/s//|PBAC-keep|/' *.fa
sed -i '0,/|MGEN|/s//|MGEN-keep|/' *.fa

sed -i '/|MGEN|/,+1d' *.fa
sed -i '/|BABY|/,+1d' *.fa
sed -i '/|CAST|/,+1d' *.fa
sed -i '/|CJET|/,+1d' *.fa
sed -i '/|EDUN|/,+1d' *.fa
sed -i '/|PBAC|/,+1d' *.fa
sed -i '/|MGEN|/,+1d' *.fa

sed -i 's/|BABY-keep|/|BABY|/g' *.fa
sed -i 's/|CAST-keep|/|CAST|/g' *.fa
sed -i 's/|CJET-keep|/|CJET|/g' *.fa
sed -i 's/|EDUN-keep|/|EDUN|/g' *.fa
sed -i 's/|PBAC-keep|/|PBAC|/g' *.fa
sed -i 's/|MGEN-keep|/|MGEN|/g' *.fa
