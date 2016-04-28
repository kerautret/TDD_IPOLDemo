#!/bin/sh
iFile="$1"
output="$2"
outFib="${iFile%.off}-fib.xyz"
bigStep=100
smallStep=25
#first time
dir="/home/vantho/ipol/demo/app/TDD_IPOLDemo/bin/"
/bin/sh -c '/home/vantho/ipol/demo/app/TDD_IPOLDemo/bin/createSmoothFib.sh ${0} ${1+"$@"}' "$iFile" "$outFib" "$smallStep"

if [ -z "$output" ]; then
    output=rsDefects
fi
echo thresholding -i "$iFile" -f "$outFib" -e 100 -a 25 -o "$output"
"$dir"thresholding -i "$iFile" -f "$outFib" -e 100 -a 25 -o "$output"

exit 0
