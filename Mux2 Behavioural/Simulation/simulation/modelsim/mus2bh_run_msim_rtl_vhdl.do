transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/mus2bh/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/mus2bh/mus2bh.vhd}

vcom -93 -work work {C:/intelFPGA_lite/20.1/workshop/mus2bh/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
