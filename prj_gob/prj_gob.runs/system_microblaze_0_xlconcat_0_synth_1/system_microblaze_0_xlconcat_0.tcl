# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.cache/wt [current_project]
set_property parent.project_path /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0.xci
set_property is_locked true [get_files /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1 -new_name system_microblaze_0_xlconcat_0 -ip [get_ips system_microblaze_0_xlconcat_0]]

if { $cached_ip eq {} } {

synth_design -top system_microblaze_0_xlconcat_0 -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix system_microblaze_0_xlconcat_0_ system_microblaze_0_xlconcat_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_microblaze_0_xlconcat_0_stub.v
 lappend ipCachedFiles system_microblaze_0_xlconcat_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_microblaze_0_xlconcat_0_stub.vhdl
 lappend ipCachedFiles system_microblaze_0_xlconcat_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_microblaze_0_xlconcat_0_sim_netlist.v
 lappend ipCachedFiles system_microblaze_0_xlconcat_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_microblaze_0_xlconcat_0_sim_netlist.vhdl
 lappend ipCachedFiles system_microblaze_0_xlconcat_0_sim_netlist.vhdl

 config_ip_cache -add -dcp system_microblaze_0_xlconcat_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips system_microblaze_0_xlconcat_0]
}

rename_ref -prefix_all system_microblaze_0_xlconcat_0_

write_checkpoint -force -noxdef system_microblaze_0_xlconcat_0.dcp

catch { report_utilization -file system_microblaze_0_xlconcat_0_utilization_synth.rpt -pb system_microblaze_0_xlconcat_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0.dcp /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0.dcp /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0_stub.v /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0_stub.vhdl /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0_sim_netlist.v /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.runs/system_microblaze_0_xlconcat_0_synth_1/system_microblaze_0_xlconcat_0_sim_netlist.vhdl /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.ip_user_files/ip/system_microblaze_0_xlconcat_0]} {
  catch { 
    file copy -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.v /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.ip_user_files/ip/system_microblaze_0_xlconcat_0
  }
}

if {[file isdir /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.ip_user_files/ip/system_microblaze_0_xlconcat_0]} {
  catch { 
    file copy -force /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.srcs/sources_1/bd/system/ip/system_microblaze_0_xlconcat_0/system_microblaze_0_xlconcat_0_stub.vhdl /home/gokul/playground/xilinx/ece253lab/prj_gob/prj_gob.ip_user_files/ip/system_microblaze_0_xlconcat_0
  }
}
