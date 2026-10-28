# dd-project

Verilog code, testbenches and submission documents for the Digital Design lab (BITS Pilani Dubai). Every circuit is simulated on [EDA Playground](https://edaplayground.com) with Cadence Xcelium and submitted as a PDF with EDA Playground links, code screenshots and waveform screenshots.

## Repository layout

Each circuit sits in its own folder with two files:

- `design.sv`: the circuit module (paste into the right box on EDA Playground)
- `testbench.sv`: the testbench (paste into the left box)

| Folder | Contents |
|---|---|
| `exp3/` | Assignment: AND using NOR, gates using NAND, even parity |
| `exp4/` | Runs 2 to 4 (half subtractor, full adder dataflow, full adder from half adders) and assignment (binary to Gray, full subtractor dataflow and behavioral) |
| `exp5/` | Assignment (8:3 encoder, 2:4 decoder with active low enable, 4-bit comparator) and Run 4 (3:8 decoder from two 2:4 decoders) |
| `exp6/` | Runs 1 to 4 (2:1 mux, 4:1 mux behavioral and dataflow, 1:2 and 1:4 demux) and assignment (NAND, XOR and 4:1 mux built from 2x1 muxes) |
| `exp7/assignment/` | Assignment 2: NOT using NAND, Y = ABC + AB + AC, 4-bit even parity |
| `exp7/assignment_ff/` | Experiment 7 (latches and flip-flops) assignment: identify circuit_1, negative edge D flip-flop, identify circuit_2 |
| `Assignment2.pdf` | Submission document for Assignment 2 |

## Running a circuit on EDA Playground

1. Open EDA Playground and log in with your own account.
2. Under Tools & Simulators pick Cadence Xcelium.
3. Paste `testbench.sv` in the left box and `design.sv` in the right box.
4. Tick "Open EPWave after run" and click Run.
5. In EPWave click Get Signals, add all signals, and set Radix to Binary if needed.
6. Save the playground, then copy the link and take the two screenshots (code and waveform).

On iPhone, turn off Smart Punctuation (Settings, General, Keyboard) before pasting, or quotes turn curly and the code will not compile.

## Coding rules

- Use only constructs the lab manual has taught by that experiment. No vectors before they appear in the manual, no `always #` clock generators in testbenches.
- Follow the modeling style the question names (structural, dataflow or behavioral). Structural means instantiating smaller modules.
- When a question gives the code ("identify the logic"), paste it unchanged and only write the testbench.
- No comments, written in the plain style used in the manual.
- Every testbench has `$dumpfile("dump.vcd");` and `$dumpvars(1, <tb name>);` so EPWave can find the waveform.
- Inputs step every `#100` (or `#50` for clocked circuits) through the full truth table, ending with `$stop`.

## Submission PDF format

- Title, name, ID number and date at the top.
- For each question: the question title, the clickable EDA Playground link, the label "Code:" with the code screenshot, then "Waveform:" with the waveform screenshot.
- Screenshots keep their original aspect ratio and are never stretched.
- Code and waveform are kept as separate, labelled images.
- Screenshots must be clean: no popups, browser menus or banners covering the code or signal names.

## Submission links

| Submission | Q1 | Q2 | Q3 |
|---|---|---|---|
| Assignment 2 | [L94U](https://edaplayground.com/x/L94U) | [cLR4](https://edaplayground.com/x/cLR4) | [p8zm](https://edaplayground.com/x/p8zm) |
| Experiment 6 assignment | [KbH6](https://edaplayground.com/x/KbH6) | [R_4x](https://edaplayground.com/x/R_4x) | [bndf](https://edaplayground.com/x/bndf) |
| Experiment 7 assignment | [eNJV](https://edaplayground.com/x/eNJV) | pending | pending |

## Current status

- Experiment 7 assignment Q2: rerun with the updated testbench, but the new link and a clean waveform screenshot are still needed. The earlier run ([6ZSA](https://edaplayground.com/x/6ZSA)) used the old `always #50` testbench and should not be submitted.
- Experiment 7 assignment Q3: not run yet.
- Experiment 7 PDF: built once Q2 and Q3 are in.
- Experiment 6 assignment PDFs (Divit and Suhani versions) were sent in chat but never committed, so they are not in this repository.
