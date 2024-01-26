# Optimize.
VERILOG_INPUT=top_noopt.sv VERILOG_OUTPUT=top_opt.sv yosys -c yosys_script.ys

# Run with and without optimization
rm -f icarus_obj_dir_noopt/Vtop && iverilog -g2012 -o icarus_obj_dir_noopt/Vtop tb_icarus.sv top_noopt.sv

rm -f icarus_obj_dir_opt/Vtop && iverilog -g2012 -o icarus_obj_dir_opt/Vtop tb_icarus.sv top_opt.sv

echo no optimization
vvp icarus_obj_dir_noopt/Vtop 
echo with optimization
vvp icarus_obj_dir_opt/Vtop 
