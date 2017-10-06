onerror {exit -code 1}
vlib work
vlog -work work usomycab.vo
vlog -work work nuevafinal.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.um1bb_vlg_vec_tst -voptargs="+acc"
vcd file -direction usomycab.msim.vcd
vcd add -internal um1bb_vlg_vec_tst/*
vcd add -internal um1bb_vlg_vec_tst/i1/*
run -all
quit -f
