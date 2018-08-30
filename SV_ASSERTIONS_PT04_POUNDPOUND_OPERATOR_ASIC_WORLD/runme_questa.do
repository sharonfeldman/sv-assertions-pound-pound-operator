vlib work
vlog -work work +accb +accr +accs -quiet {TB.SV}
vsim work.hash_sequence
do -waves
run -all
