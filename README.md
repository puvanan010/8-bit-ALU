# 8-bit-ALU
# 8-bit ALU Design with AI-Assisted Verification

## Project Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog HDL, designed to support eight different arithmetic and logical operations controlled by a 3-bit opcode input[cite: 1]. Additionally, it integrates AI-assisted testbench generation and verification methodologies to structure the hardware debugging and validation workflow[cite: 1].

---

## Functional Requirements
The ALU supports the following operations mapped via 3-bit opcodes[cite: 1]:

| Opcode | Operation |
| :---: | :--- |
| `000` | Addition[cite: 1] |
| `001` | Subtraction[cite: 1] |
| `010` | Multiplication[cite: 1] |
| `011` | Left Shift[cite: 1] |
| `100` | Right Shift[cite: 1] |
| `101` | Logical AND[cite: 1] |
| `110` | Logical OR[cite: 1] |
| `111` | Logical XOR[cite: 1] |

* **Inputs:** `InputA [7:0]`, `InputB [7:0]`, `OpCode [2:0]`[cite: 1]
* **Outputs:** `OutALU [15:0]`, `COut` (Carry Out, if applicable)[cite: 1]

---

## Verification & Test Cases
The design is verified using two comprehensive test cases covering arithmetic boundaries, shifting, and logical operations:

* **Case 1:** `InputA = 45`, `InputB = 38` (Tested Opcodes: `000`, `001`, `110`, `111`)[cite: 1]
* **Case 2:** `InputA = 49`, `InputB = 10` (Tested Opcodes: `010`, `011`, `100`, `101`)[cite: 1]

---

## How to Run This Project Online (EDA Playground)
Instead of local software suites like ModelSim or Vivado, this project is configured to run on **[EDA Playground](https://www.edaplayground.com)**:

1. Create a free account on [EDA Playground](https://www.edaplayground.com).
2. Paste the contents of `design.sv` into the **Design** window.
3. Paste the contents of `testbench.sv` into the **Testbench** window.
4. Under **Tools & Simulators**, select **Icarus Verilog 12.x**.
5. Check the options for **Open EPWave after run** and **Show output text file**.
6. Click **Run** to simulate the design and view waveforms.

---

## Repository Structure
* `design.sv`: Contains the synthesizable Verilog RTL code for the 8-bit ALU using `case` statements for opcode selection.
* `testbench.sv`: Contains the simulation testbench incorporating automated test cases, `$monitor` console readouts, and VCD waveform dumping commands (`$dumpfile` / `$dumpvars`).
* `AI_Integration_Report.pdf`: Documents the prompt used for AI-assisted testbench generation, simulation waveforms (EPWave screenshots), and comparative evaluation.

---

**Project Domain:** VLSI Design | RTL Design | Digital Design Verification

**Author:** K S PUVANAN
