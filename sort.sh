#/bin/sh

exts=$(ls)
nombretotal=$(find . | wc -l)
count=1

for ext in $exts
do
#echo  $ext
directo=$(file -ib ./$ext | cut -d';' -f1)
#echo  $ext "deplacee vers" $directo
mkdir -p $directo
mv ./$ext ./$directo
count=`expr $count + 1`
echo $count "\t sur" $nombretotal

done
