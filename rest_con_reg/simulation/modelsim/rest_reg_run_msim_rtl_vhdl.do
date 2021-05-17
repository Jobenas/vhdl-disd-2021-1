transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/fan_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/fa.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/rest_reg_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/fan.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/rest_reg.vhd}

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/rest_con_reg/simulation/modelsim/rest_reg.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  rest_reg_vhd_tst

add wave *
view structure
view signals
run 60 ns
