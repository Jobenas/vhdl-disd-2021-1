transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/fan_for_gen/fan_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/fan_for_gen/fa.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/circuito_desp/desp_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/fan_for_gen/fan.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/circuito_desp/desp.vhd}

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/circuito_desp/simulation/modelsim/desp.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  desp_vhd_tst

add wave *
view structure
view signals
run 80 ns
