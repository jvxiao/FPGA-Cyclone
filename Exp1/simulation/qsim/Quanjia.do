onerror {exit -code 1}
vlib work
vlog -work work Quanjia.vo
vlog -work work Quanjia.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Quanjia_vlg_vec_tst -voptargs="+acc"
vcd file -direction Quanjia.msim.vcd
vcd add -internal Quanjia_vlg_vec_tst/*
vcd add -internal Quanjia_vlg_vec_tst/i1/*
run -all
quit -f
