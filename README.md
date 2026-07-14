# 🚀 RTL Design and Verification of a Network Traffic Generator and Performance Monitoring System

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado%202024.2-orange)
![FPGA](https://img.shields.io/badge/Domain-FPGA-success)
![RTL](https://img.shields.io/badge/Design-RTL-red)
![Simulation](https://img.shields.io/badge/Verification-Functional%20Simulation-brightgreen)
![Status](https://img.shields.io/badge/Project-Completed-success)
![License](https://img.shields.io/badge/License-MIT-blue)

---

## 📖 Project Overview

This project presents the **RTL Design and Functional Verification of a Network Traffic Generator and Performance Monitoring System** using **Verilog HDL**.

The design simulates a simplified network communication system capable of:

- Generating network packets
- Buffering packets using FIFO memory
- Calculating throughput
- Measuring latency
- Monitoring packet transmission
- Detecting congestion
- Collecting network performance statistics

The complete system has been developed and verified using **Xilinx Vivado 2024.2** through RTL simulation, synthesis, schematic generation, and timing analysis.

---

# 🌍 Real-Life Analogy

Imagine a busy highway.

- 🚗 Cars represent **Network Packets**
- 🛣 Highway represents **Communication Channel**
- 🚦 Traffic Generator releases cars
- 🅿 FIFO acts like a parking area
- 📊 Statistics Engine counts vehicles
- ⏱ Latency Analyzer measures travel time
- 📈 Throughput Calculator measures vehicles passing every second
- 🚨 Congestion Detection checks for traffic jams

This project digitally recreates that complete traffic management system.

---

# 🎯 Project Objectives

- Design a modular RTL architecture
- Generate configurable network traffic
- Store packets using FIFO
- Monitor packet transmission
- Measure latency
- Calculate throughput
- Detect congestion
- Verify functionality through simulation
- Perform synthesis and timing verification

---

# ✨ Features

| Feature | Description |
|----------|-------------|
| Packet Generator | Generates continuous packet stream |
| FIFO Buffer | Temporary packet storage |
| Packet Counter | Counts transmitted packets |
| Latency Analyzer | Calculates packet delay |
| Throughput Calculator | Calculates data transfer rate |
| Statistics Engine | Generates packet statistics |
| Congestion Detection | Detects traffic congestion |
| RTL Schematic | Hardware representation |
| Functional Simulation | Verifies RTL logic |
| Timing Analysis | Checks design timing |

---

# 🏗 System Architecture

```text
                    +--------------------+
                    | Traffic Generator  |
                    +---------+----------+
                              |
                              |
                       Packet Data
                              |
                              ▼
                     +----------------+
                     |      FIFO      |
                     +--------+-------+
                              |
            ------------------+--------------------
            |                 |                  |
            ▼                 ▼                  ▼

+----------------+  +-------------------+  +-------------------+
| Statistics     |  | Throughput        |  | Latency Analyzer  |
| Engine         |  | Calculator        |  |                   |
+----------------+  +-------------------+  +-------------------+
            |                 |                  |
            +-----------------+------------------+
                              |
                              ▼
                    Network Performance
                          Statistics
```

---

# 📂 Repository Structure

```text
Network-Traffic-Generator-Performance-Monitoring-System
│
├── rtl
│   ├── top.v
│   ├── fifo.v
│   ├── traffic_generator.v
│   ├── statistics_engine.v
│   ├── throughput_calculator.v
│   └── latency_analyzer.v
│
├── testbench
│   └── tb_top.sv
│
├── screenshots
│   ├── rtl_schematic.png
│   ├── waveform.png
│   ├── timing_summary.png
│
├── docs
│   └── Project_Report.pdf
│
├── LICENSE
├── .gitignore
└── README.md
```

---

# 🧩 RTL Modules

## 1️⃣ Top Module

Coordinates all submodules and manages overall system functionality.

### Responsibilities

- Module integration
- Clock distribution
- Reset handling
- Signal routing

---

## 2️⃣ Traffic Generator

Simulates packet generation.

### Inputs

- Clock
- Reset
- Enable

### Outputs

- Packet Data
- Packet Valid

---

## 3️⃣ FIFO Buffer

Stores packets temporarily before processing.

### Responsibilities

- Packet buffering
- Overflow prevention
- Empty/full indication

---

## 4️⃣ Statistics Engine

Collects network statistics.

Calculates:

- Packets Sent
- Packets Received
- Packets Dropped

---

## 5️⃣ Throughput Calculator

Measures network throughput.

Throughput represents

> Amount of data successfully transferred in a given time.

---

## 6️⃣ Latency Analyzer

Measures packet delay.

Latency represents

> Time required for a packet to travel from source to destination.

---

# ⚙ Design Flow

```text
RTL Coding
      │
      ▼
Functional Simulation
      │
      ▼
Debugging
      │
      ▼
RTL Synthesis
      │
      ▼
RTL Schematic Generation
      │
      ▼
Timing Analysis
      │
      ▼
Project Verification
```

---

# 🖥 Development Environment

| Tool | Version |
|------|----------|
| Xilinx Vivado | 2024.2 |
| HDL | Verilog |
| Simulation | Vivado Simulator |
| Synthesis | Vivado RTL Synthesis |

---

# 📊 Functional Verification

The design has been verified using Vivado Functional Simulation.

Verified scenarios include:

- Reset operation
- Packet generation
- FIFO buffering
- Packet transmission
- Packet counting
- Throughput calculation
- Latency calculation
- Congestion detection

Simulation confirms that all RTL modules function as intended.

---

# ⏱ Timing Analysis

The synthesized design reports:

- Zero Timing Violations
- Zero Hold Violations
- Zero Setup Violations
- Successful RTL Synthesis

Timing Summary indicates the design is synthesizable and operates without timing failures.

---

# 📈 Results

The implemented system successfully

✅ Generates network packets

✅ Stores packets using FIFO

✅ Calculates throughput

✅ Measures latency

✅ Detects congestion

✅ Collects transmission statistics

✅ Passes functional simulation

✅ Passes synthesis

---

# 🚀 Future Improvements

- AXI4 Interface
- Ethernet MAC Integration
- DDR Memory Interface
- DMA Support
- FPGA Hardware Deployment
- Network-on-Chip (NoC)
- QoS Scheduler
- Packet Priority Handling
- Error Injection Module
- Performance Dashboard

---

# 🎓 Learning Outcomes

Through this project, the following concepts were implemented and verified:

- RTL Design
- Verilog HDL
- Digital System Design
- FIFO Architecture
- Modular Hardware Design
- Functional Verification
- Timing Analysis
- FPGA Design Flow
- Network Performance Monitoring

---

# 👨‍💻 Author

**Prabir Bishal**
Contact me: prabirbishal2005@gmail.com
# ⭐ If you found this project useful

Please consider giving it a ⭐ on GitHub.
