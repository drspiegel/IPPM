set st(root)         [file normalize ".."]
set st(run_dir)      [file normalize "."]

set st(cl)           $st(root)/celllist.txt
set st(vfile_suffix) ".syn_y2.v"
set st(lib_dir)      $st(root)/lib
set st(ver_dir)      $st(root)/verilog
set st(res_dir)      $st(run_dir)/results
puts "--- Work directory: $st(run_dir)"

if {[catch {exec cat $st(cl)} st(ckt_list)]} {
	puts "--- ERROR: Couldn't open celllist file $st(cl)"
	set st(ckt_list) {}
}

set timing_report_unconstrained_paths 1
set search_path st(run_dir)
set link_library $st(lib_dir)/core_PtcV1.80T25.db

if {![file exists $st(res_dir)]} {
	file mkdir $st(res_dir)
	puts "--- Output directory doesn't exist..."
	puts "--- Create output directory..."
}
puts "--- Output directory: $st(res_dir)"

foreach a_ckt $st(ckt_list) {
	puts "~~~ Start ckt: $a_ckt"
	set a_vfile "$st(ver_dir)/${a_ckt}$st(vfile_suffix)"
	puts "--- Verilog netlist: $a_vfile"
	read_verilog $a_vfile
	link
	set_input_transition 0.05 [all_inputs]
	#set_load 0.002 [all_outputs]
	report_timing -delay_type max -max_paths 1 -transition_time -capacitance -significant_digits 6 > $st(res_dir)/${a_ckt}_timing.txt
	remove_design -all
}

exit
