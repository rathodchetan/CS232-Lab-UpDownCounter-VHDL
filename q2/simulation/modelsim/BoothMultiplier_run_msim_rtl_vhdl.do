transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/chetan/Desktop/Semester4/CS232DLDCALab/lab5/q2/BoothMultiplier.vhd}

