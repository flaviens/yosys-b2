# Mis-optimization of wide shifts

Tested with `Yosys 0.37+29 (git sha1 3c3788ee2, clang 10.0.0-4ubuntu1 -fPIC -Os)`.
The mismatch is confirmed by Icarus Verilog.
No `x` or `z` values are involved.

How to reproduce:
```bash
bash run.sh
```

This will:
1. Create `top_opt.sv`, the optimized version of `top_noopt.sv`.
2. Run a simple simulation of `top_opt.sv` and `top_noopt.sv` with Icarus Verilog.
3. Report a mismatch.

Expected output (the output should not be affected by the optimizations):
```bash
no optimization
Output: 00000000
with optimization
Output: 00000000
```

Actual output:
```bash
no optimization
Output: 00000000
with optimization
Output: ffffffff
```
