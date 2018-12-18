onerror {exit -code 1}
vlib work
vlog -work work top_clock.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_clock_vlg_vec_tst -voptargs="+acc"
vcd file -direction top_clock.msim.vcd
vcd add -internal top_clock_vlg_vec_tst/*
vcd add -internal top_clock_vlg_vec_tst/i1/*
run -all
quit -f
