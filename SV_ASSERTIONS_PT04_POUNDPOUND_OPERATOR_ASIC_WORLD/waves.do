onerror { resume }
set curr_transcript [transcript]
transcript off

add wave -height 30 /hash_sequence/clk
add wave -height 30 -bin /hash_sequence/req
add wave -height 30 -bin /hash_sequence/gnt
add wave -height 30 /hash_sequence/reset
add wave -height 30 /hash_sequence/req_gnt_1clock_assert
add wave -height 30 /hash_sequence/req_gnt_3to5clock_assert
add wave -height 30 /hash_sequence/req_gnt_0clock_assert
add wave -height 30 /hash_sequence/master_assert
wv.cursors.add -time 9300fs -name {Default cursor}
wv.cursors.setactive -name {Default cursor}
wv.zoom.range -from 0fs -to 55ps
wv.time.unit.auto.set
transcript $curr_transcript
