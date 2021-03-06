# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.cache/wt [current_project]
set_property parent.project_path E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo e:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/bcd_to_ss.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/clk_divider.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/data_sync.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/display_mux.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet_inversa.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_basic.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_rx.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_tx.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/unsigned_to_bcd.v
  E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v
}
read_ip -quiet E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/ip/BRAM/BRAM.xci
set_property used_in_implementation false [get_files -all e:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/ip/BRAM/BRAM_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/constrs_1/imports/constr/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/constrs_1/imports/constr/Nexys4DDR_Master.xdc]


synth_design -top main -part xc7a100tcsg324-3


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef main.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb"
