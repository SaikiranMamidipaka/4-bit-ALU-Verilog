# 4-bit ALU in Verilog HDL

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL** with a modular and hierarchical design approach.  
The ALU combines separate **arithmetic** and **logical** operation blocks and selects the final output using a **mode control signal**.

---

## 📌 Project Overview

The design is divided into multiple reusable modules:

- **Full Adder**
- **4-bit Ripple Carry Adder**
- **4x1 Multiplexer**
- **Arithmetic Unit**
- **Logical Unit**
- **Top-Level ALU**
- **Testbench for simulation**

This modular approach improves readability, reusability, and understanding of digital design concepts.

---

## ⚙️ Features

- 4-bit ALU design using **Verilog HDL**
- Separate **arithmetic** and **logical** units
- **Hierarchical modular design**
- **Mode-based output selection**
- Testbench verification using **Icarus Verilog**
- Waveform analysis using **GTKWave**

---

## 🧩 Modules Used

- `full_adder.v`
- `ripple_carry_adder_4bit.v`
- `mux_4x1.v`
- `arithmetic.v`
- `logical.v`
- `alu.v`
- `alu_tb.v`

---

## 🔢 ALU Operations

### Arithmetic Mode (`mode = 0`)
The arithmetic unit uses:
- `s[1:0]` as select lines
- `cin` as carry input

Depending on `s` and `cin`, the arithmetic unit performs different arithmetic functions such as:
- Addition
- Subtraction / complement-based arithmetic
- Increment / modified arithmetic operations (based on select inputs)

### Logical Mode (`mode = 1`)
The logical unit performs:

| Select `s` | Operation |
|-----------|-----------|
| `00` | AND |
| `01` | OR |
| `10` | XOR |
| `11` | NOT (`~a`) |

---

## 🏗️ Top-Level ALU Working

- **`mode = 0`** → selects **Arithmetic Unit output**
- **`mode = 1`** → selects **Logical Unit output**

Final output:
- `y[3:0]` → ALU result
- `cout` → carry output (valid in arithmetic mode)

---

## 🧪 Simulation

### Compile
```bash
iverilog -o alu_tb.vvp alu_tb.v alu.v logical.v arithmetic.v mux_4x1.v ripple_carry_adder_4bit.v full_adder.v