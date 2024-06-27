transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/h_add.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/full.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/bcd_add.vhd}

vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/bcd_add/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
