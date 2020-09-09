for f in *
do
    filename=$(basename -- "$f")
    if [ "$filename" != "retirarExt.sh" ] && [ "$filename" != "voltarExt.sh" ]  && [ "$filename" != "aux.txt" ] && [ -f $filename ]
    then 
        filename="${filename%.*}"
        echo "$f" >> aux.txt
        mv "$f" "$filename"
    fi
done