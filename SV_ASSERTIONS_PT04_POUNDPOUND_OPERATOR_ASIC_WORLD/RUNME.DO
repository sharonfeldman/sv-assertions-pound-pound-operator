alib work
alog -work work -msg 5 -dbg +accb +accr +accs -protect 0 -quiet -sve -coverage sbecam -coverage_options count+args+implicit+onevar+relational+vectors+fsmsequence+fsmselfloop {TB.SV}
asim +access +r -cvgperinstance -dbg -t 0 -ses +accb +accr -advdataflow -dataset {.} -datasetname {sim} -xtrace -acdb -acdb_cov s -acdb_file ./coverage.acdb work.hash_sequence
system.open -wave
wave sim:/hash_sequence/clk
wave -bin sim:/hash_sequence/req
wave -bin sim:/hash_sequence/gnt
wave sim:/hash_sequence/reset
wave sim:/hash_sequence/req_gnt_1clock_assert
wave sim:/hash_sequence/req_gnt_3to5clock_assert
wave sim:/hash_sequence/req_gnt_0clock_assert
wave sim:/hash_sequence/master_assert
do waves.do
run -all
