#!/usr/bin/fish

set input_file_name $argv[1]
set output_file_name $argv[2]

true > $output_file_name

for line in (cat $input_file_name)
    set obj_id (string split " " -- $line)[1]
    set azi_in (string split " " -- $line)[2]
    set azi_out (string split " " -- $line)[3]
    set line_out $obj_id\_$azi_out\_0 $obj_id\_$azi_in\_0
    echo $line_out >> $output_file_name
end
