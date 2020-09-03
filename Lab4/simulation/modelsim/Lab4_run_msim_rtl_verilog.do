transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/thaos/Desktop/Lab4 {C:/Users/thaos/Desktop/Lab4/debounce.v}
vlog -vlog01compat -work work +incdir+C:/Users/thaos/Desktop/Lab4 {C:/Users/thaos/Desktop/Lab4/lab4part6.v}

vlog -vlog01compat -work work +incdir+C:/Users/thaos/Desktop/Lab4 {C:/Users/thaos/Desktop/Lab4/Lab4part6_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Lab4part6_tb

add wave *
view structure
view signals
run -all