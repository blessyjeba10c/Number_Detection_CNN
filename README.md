#  Number Detection using Neuromorphic Core on FPGA

This project demonstrates **digit recognition (specifically number '5')** using a **Spiking Neural Network (SNN)** implemented on an **FPGA**. The neuromorphic model is trained and deployed using a `.mem` file integrated into a Verilog-based architecture.

---

##  Project Overview

This work aims to implement a **brain-inspired SNN** to detect handwritten digit ‘5’ using **event-driven computation**. The SNN is simulated, trained, and its weights are exported into a `.mem` file which is then used to configure the FPGA’s neuromorphic core.

---

##  Components Used

- **FPGA Board**: Xilinx Spartan-6 (or compatible)
- **Verilog HDL**: To model the SNN architecture
- **.mem File**: Stores the trained weights and model parameters
- **Clock Generator**: Drives the timing for neuron spikes
- **Xilinx ISE / Vivado**: Used for synthesis, simulation, and programming
- **Input Dataset**: Digit '5' from binarized pixel grid
- **Oscilloscope/Logic Analyzer**: For signal observation

---

##  Workflow

1. **Train** SNN model on digit ‘5’
2. **Export** weights to `.mem` format
3. **Map** weights into FPGA using Verilog modules
4. **Simulate** and verify with Xilinx ISE
5. **Deploy** on FPGA for real-time detection
6. **Observe** output through simulation and hardware behavior

---

##  Project Diagram

![SNN on FPGA Diagram](./assets/snn_fpga_block_diagram.png) <!-- replace with actual image path -->

---

##  Key Outcomes

-  Detected digit **‘5’** using neuromorphic SNN on FPGA
-  Achieved **low-latency**, **low-power** spike-based inference
-  Successfully integrated trained model via `.mem` file
-  Validated functionality on real hardware

---


