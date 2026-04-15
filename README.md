# PWM-Generator-Verilog-FPGA
##  Project Overview
This project presents the design and implementation of a Pulse Width Modulation (PWM) generator using Verilog HDL on an FPGA platform. PWM is widely used for motor speed control, LED brightness control, and power regulation applications.

The design is simulated and verified using Xilinx Vivado.

---

##  Objectives
- Design PWM generator using Verilog HDL
- Generate variable duty cycle PWM signal
- Perform functional simulation in Vivado
- Analyze waveform and RTL schematic

---

##  Methodology
The PWM generator is implemented using an 8-bit up counter and a comparator.

- Counter counts from 0 to 255.
- Duty cycle input determines ON time.
- When counter < duty → PWM output HIGH.
- Otherwise → PWM output LOW.

This comparison produces a pulse width modulated signal.

---

##  Design Architecture
- Clock Input
- Reset Signal
- 8-bit Counter
- Comparator
- PWM Output

---

##  Simulation Results
Simulation waveform verifies correct PWM generation with adjustable duty cycle.

- Duty = 64 → 25%
- Duty = 128 → 50%
- Duty = 192 → 75%

RTL schematic confirms successful hardware synthesis.

---

##  Tools Used
- Verilog HDL
- Xilinx Vivado
- FPGA Design Flow

---

##  Project Files
- `pwm_generator.v` → PWM design module
- `pwm_generator_tb.v` → Testbench
- Simulation waveform
- RTL schematic

---

##  Applications
- Fan speed control
- LED brightness control
- Motor control
- Power electronics systems

---

##  Author
Kasak Chauhan  
B.Tech Electronics & Communication Engineering (VLSI)
