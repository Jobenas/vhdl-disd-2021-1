transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/fan_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/fa.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/desp_control.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/desp_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/serial_comps.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/fan.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/desp.vhd}
vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/serial.vhd}

vcom -93 -work work {C:/Users/joben/personal_dev/disd/2021-1/codigo/ejemplo_serial/serial/simulation/modelsim/serial.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  serial_vhd_tst

add wave *
view structure
view signals
run 100 ns
