#!/bin/bash
qlist -I > input-packages-list.txt     
while IFS= read -r p; do
qlop -tH "$p" >> output.txt 
done <input-packages-list.txt

sed 's/.*://; s/[^ 0-9]*//g' output.txt > output2.txt 
#sed 's/[^ 0-9]*//g' output2.txt > output3.txt



#Now using gawk
#if numbers of elements is 4 then multiply the 1st by 3600, multiply the 2nd by 60 and add the 3 first numbers; consider the result as the new 1st element
# while if the number of elements is 3 then multiply the 1st by 60 and add it to the 2nd element; consider the result as the new 1st element
#so that in the end I'm left with 2 columns: time in seconds and number of compilation(s)
awk '
NF == 3 {
    $1 = $1 * 60 + $2
    print $1,$3;
}
NF == 4 {
    $1 = $1 * 3600 + $2 * 60 + $3
    print $1,$4;
}
NF != 3 && NF != 4 {
    print $1,$2
}
' output2.txt > output3.txt

rm output.txt
rm output2.txt
