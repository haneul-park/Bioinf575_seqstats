sequence_file=$1
motif1=$2
motif2=$3

echo command 1
grep -o $motif1 $sequence_file | wc -l
echo command 2
grep -o $motif2 $sequence_file | wc -l

echo "count line in file"
wc -l $sequence_file
sed '1d' $sequence_file | wc -l  # This removes the first line

echo testing done
