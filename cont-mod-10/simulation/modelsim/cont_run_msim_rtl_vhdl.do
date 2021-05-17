transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/cont-mod-10/cont.vhd}

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/cont-mod-10/simulation/modelsim/cont.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  cont_vhd_tst

add wave *
view structure
view signals
run 250 ns
