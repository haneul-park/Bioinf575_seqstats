sequence_file=$1
first_motif=$2
second_motif=$3

echo command 1
grep -o $first_motif $sequence_file | wc -l
echo command 2
grep -o $second_motif $sequence_file | wc -l

echo "count line in file"
sed '1d' $sequence_file | wc -l  # This removes the first line

echo testing done
