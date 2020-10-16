for bengaluru in `ls *.pdf`
do
	foldername= `echo $bengaluru | awk -F. '{print $1}'`
	echo $foldername
done
