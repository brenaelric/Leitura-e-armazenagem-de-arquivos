for line in $(cat aux.txt)
do
    filename=$(basename -- "$line")
    filename="${filename%.*}"
    mv "$filename" "$line"
done
rm aux.txt