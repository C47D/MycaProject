onerror {exit -code 1}
vlib work
vlog -work work Usomyca1.vo
vlog -work work UsoMyca1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.div_vlg_vec_tst -voptargs="+acc"
vcd file -direction Usomyca1.msim.vcd
vcd add -internal div_vlg_vec_tst/*
vcd add -internal div_vlg_vec_tst/i1/*
run -all
quit -f
