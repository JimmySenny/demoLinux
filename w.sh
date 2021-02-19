COL=`awk '{ print NF }' tst.in | sort | uniq `
echo $COL
>tst.out
i=1
while [ $i -le ${COL} ]
#for((i=1;i<=$COL;i++))
do
    echo $i
    cut -d" " -f $i tst.in | paste -d" " -s >> tst.out

#    let i++
    i = expr $i + 1
done
