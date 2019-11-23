set projDir "C:/Users/ymf_m/Documents/mojo/Slidey/work/planAhead"
set projName "Slidey"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/mojo_top_0.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/reset_conditioner_1.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/game_states_2.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/edge_detector_3.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/edge_detector_3.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/edge_detector_3.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/edge_detector_3.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/button_conditioner_7.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/button_conditioner_7.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/button_conditioner_7.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/button_conditioner_7.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/level_one_rom_11.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/move_player_12.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/pipeline_13.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/pipeline_13.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/pipeline_13.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/pipeline_13.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/alu_17.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/adder_18.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/shifter_19.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/boolean_20.v" "C:/Users/ymf_m/Documents/mojo/Slidey/work/verilog/compare_21.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/ymf_m/Documents/mojo/Slidey/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
