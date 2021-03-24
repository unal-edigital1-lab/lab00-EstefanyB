transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc {E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc/sum4bcc.v}
vlog -vlog01compat -work work +incdir+E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc {E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc/sum1bcc.v}

vlog -vlog01compat -work work +incdir+E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc {E:/Quartus/digital1/lab00-EstefanyB/Sum4bcc/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
