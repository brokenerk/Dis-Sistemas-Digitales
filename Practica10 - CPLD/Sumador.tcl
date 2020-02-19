
########## Tcl recorder starts at 02/18/20 18:31:03 ##########

set version "2.0"
set proj_dir "C:/Users/YaKerTaker/Desktop/P10DSD"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [catch {open Reg10.cmd w} rspFile] {
	puts stderr "Cannot create response file Reg10.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: sumador.sty
PROJECT: Reg10
WORKING_PATH: \"$proj_dir\"
MODULE: Reg10
VHDL_FILE_LIST: Sumador.vhd
OUTPUT_FILE_NAME: Reg10
SUFFIX_NAME: edi
FREQUENCY:  200
FANIN_LIMIT:  20
DISABLE_IO_INSERTION: false
MAX_TERMS_PER_MACROCELL:  16
MAP_LOGIC: false
SYMBOLIC_FSM_COMPILER: true
NUM_CRITICAL_PATHS:   3
AUTO_CONSTRAIN_IO: true
NUM_STARTEND_POINTS:   0
AREADELAY:  0
WRITE_PRF: true
RESOURCE_SHARING: true
COMPILER_COMPATIBLE: true
DEFAULT_ENUM_ENCODING: default
ARRANGE_VHDL_FILES: true
synthesis_onoff_pragma: false
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/Synpwrap\" -e Reg10 -target ispmach4000b -pro "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete Reg10.cmd
if [runCmd "\"$cpld_bin/edif2blf\" -edf Reg10.edi -out Reg10.bl0 -err automake.err -log Reg10.log -prj sumador -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Reg10.bl0 -collapse none -reduce none -keepwires  -err automake.err -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Reg10.bl1\" -o \"sumador.bl2\" -omod \"sumador\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj sumador -lci sumador.lct -log sumador.imp -err automake.err -tti sumador.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci sumador.lct -blifopt sumador.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" sumador.bl2 -sweep -mergefb -err automake.err -o sumador.bl3 @sumador.b2_ "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci sumador.lct -dev lc4k -diofft sumador.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" sumador.bl3 -family AMDMACH -idev van -o sumador.bl4 -oxrf sumador.xrf -err automake.err @sumador.d0 "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci sumador.lct -dev lc4k -prefit sumador.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -blif -inp sumador.bl4 -out sumador.bl5 -err automake.err -log sumador.log -mod Reg10 @sumador.l0  -sc"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open sumador.rs1 w} rspFile] {
	puts stderr "Cannot create response file sumador.rs1: $rspFile"
} else {
	puts $rspFile "-i sumador.bl5 -lci sumador.lct -d m4e_256_96 -lco sumador.lco -html_rpt -fti sumador.fti -fmt PLA -tto sumador.tt4 -nojed -eqn sumador.eq3 -tmv NoInput.tmv
-rpt_num 1
"
	close $rspFile
}
if [catch {open sumador.rs2 w} rspFile] {
	puts stderr "Cannot create response file sumador.rs2: $rspFile"
} else {
	puts $rspFile "-i sumador.bl5 -lci sumador.lct -d m4e_256_96 -lco sumador.lco -html_rpt -fti sumador.fti -fmt PLA -tto sumador.tt4 -eqn sumador.eq3 -tmv NoInput.tmv
-rpt_num 1
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lpf4k\" \"@sumador.rs2\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete sumador.rs1
file delete sumador.rs2
if [runCmd "\"$cpld_bin/tda\" -i sumador.bl5 -o sumador.tda -lci sumador.lct -dev m4e_256_96 -family lc4k -mod Reg10 -ovec NoInput.tmv -err tda.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj sumador -if sumador.jed -j2s -log sumador.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 02/18/20 18:31:03 ###########


########## Tcl recorder starts at 02/18/20 18:31:35 ##########

# Commands to make the Process: 
# Optimization Constraint
# - none -
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci sumador.lct -touch sumador.imp
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/optedit\" @opt_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 02/18/20 18:31:35 ###########


########## Tcl recorder starts at 02/18/20 18:31:39 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/blifstat\" -i sumador.bl5 -o sumador.sif"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-nodal -src sumador.bl5 -type BLIF -presrc sumador.bl3 -crf sumador.crf -sif sumador.sif -devfile \"$install_dir/ispcpld/dat/lc4k/m4e_256_96.dev\" -lci sumador.lct
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 02/18/20 18:31:39 ###########

