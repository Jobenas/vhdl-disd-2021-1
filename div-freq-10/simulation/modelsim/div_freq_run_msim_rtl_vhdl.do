transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/div-freq-10/div_freq.vhd}

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/div-freq-10/simulation/modelsim/div_freq.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  div_freq_vhd_tst

add wave *
view structure
view signals
run 350 ns
