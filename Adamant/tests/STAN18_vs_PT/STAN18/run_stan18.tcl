################################################
# User params #
################################################

set st(root) [file normalize ".."]
set st(run_dir) [file normalize "."]

set st(cl)           $st(root)/celllist.txt
set st(vfile_suffix) ".syn_y2.v"
set st(lib_dir)      $st(root)/lib
set st(center_lib)	 $st(lib_dir)/core_PtcV1.80T25.lib
set st(mc)			 500
set st(path) 		 [file dirname [info script]]

set st(run_static) 1

set st(ver_dir) $st(root)/verilog
set st(res_dir) $st(run_dir)/results
puts "--- Work directory: $st(run_dir)"

################################################
# End of user params #
################################################

################################################
# Main script #
################################################

puts "~~~ Start script"

if {[catch {exec cat $st(cl)} st(ckt_list_1)]} {
	puts "--- ERROR: Couldn't open celllist file $st(cl)"
	set st(ckt_list_1) {}
}
#puts "--- List of ckt: $st(ckt_list_1)"

if {![file exists $st(res_dir)]} {
	file mkdir $st(res_dir)
	puts "--- Output directory doesn't exist..."
	puts "--- Create output directory..."
}
puts "--- Output directory: $st(res_dir)"

foreach ckt $st(ckt_list_1) {
	puts "~~~ Start ckt: $ckt"
	
	st_init
	st_ckt_init $ckt 0

	# Set parameters #

	st_set_param mc $st(mc)
	st_set_param log_file_name [file join $st(res_dir) "$ckt.log"]
	st_set_param input_transition_time 0.05
	st_set_param arrival_time_output_mode 0
	st_set_param capacitance_scale 1.0
	st_set_param cloadVariation 0.05
	
	set vfile "$st(ver_dir)/${ckt}$st(vfile_suffix)"
	st_inp_read [file join $st(path) $st(center_lib)] syn_library $ckt
	st_inp_read [file join $st(path) $vfile] verilog $ckt

	#set_load 0.002 [all_outputs]

	# Run static timing #

	if {$st(run_static)} {
		st_run static_timing 1
		st_report_timing [file join $st(res_dir) ${ckt}_timing.txt] max
	}

	st_ckt_destroy $ckt
	st_quit
}
