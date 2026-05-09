
# 8:1 Multiplexer using Verilog

This project contains the implementation of an 8:1 Multiplexer (MUX) in Verilog using different coding styles.

## Methods Used

- Dataflow Modeling
- Behavioral Modeling using if-else
- Behavioral Modeling using case statement

## Description

An 8:1 Multiplexer selects one input from eight inputs based on the select lines and transfers it to the output.

### Inputs
- `in[7:0]` → 8 input lines
- `sel[2:0]` → Select lines

### Output
- `y` → Output line

---

# Files Included

| File Name | Description |
|-----------|-------------|
| `mux8to1_dataflow.v` | 8:1 MUX using assign statement |
| `mux8to1_ifelse.v` | 8:1 MUX using if-else |
| `mux8to1_case.v` | 8:1 MUX using case statement |
| `tb_mux8to1.v` | Testbench file |
| `dump.vcd` | Waveform dump file |

---

# Simulation Tool

- Icarus Verilog
- GTKWave
- VS Code

---

# Compilation Command

```bash
iverilog -o mux mux8to1_case.v tb_mux8to1.v
