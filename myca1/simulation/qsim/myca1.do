onerror {exit -code 1}
vlib work
vlog -work work myca1.vo
vlog -work work myca1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.myca1_vlg_vec_tst -voptargs="+acc"
vcd file -direction myca1.msim.vcd
vcd add -internal myca1_vlg_vec_tst/*
vcd add -internal myca1_vlg_vec_tst/i1/*
run -all
quit -f
