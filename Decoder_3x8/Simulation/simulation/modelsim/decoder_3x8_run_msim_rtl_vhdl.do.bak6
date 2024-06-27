transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/decoder_3x8/Gates.vhdl}
vcom -93 -work work {D:/decoder_3x8/DUT.vhdl}
vcom -93 -work work {D:/decoder_3x8/decoder_3x8.vhd}
vcom -93 -work work {D:/decoder_3x8/decoder_2x4.vhd}

vcom -93 -work work {D:/decoder_3x8/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
