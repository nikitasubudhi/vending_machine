# 🪙 Vending Machine 

A hardware implementation of a highly reliable, state-based vending machine controller designed and verified in Verilog HDL.

---

## 🚀 Project Overview

* **FSM Architecture:** Designed and verified a predominantly **Moore FSM-based** vending machine in Verilog HDL.
* **Core Capabilities:** Supports four distinct products featuring interactive coin insertion, product selection, instant cancel operations, and automatic change return mechanisms.
* **Transaction Control:** Implemented a robust **19-state FSM** managing synchronized transaction control, state-based product dispensing, and deterministic input-driven refund logic.
* **Verification:** Developed a comprehensive testbench validating functional correctness through extensive simulation and waveform analysis across normal, cancellation, and overpayment edge cases.

---

## 🛠️ Tech Stack & Concepts

* **Language:** Verilog HDL
* **Methodology:** Finite State Machine (FSM) Design (Moore & Mealy mix)
* **Tools:** RTL Simulation, Waveform Analysis  (Vivado)
* **Scenarios Verified:** Normal Operation, Transaction Cancellation, Overpayment / Change Generation

---

## 📌 Features

- [x] **4-Product Support:** Independent selection and tracking for multiple inventory items.
- [x] **Smart Change Return:** Automatically calculates and dispenses the correct change amount upon overpayment.
- [x] **Graceful Cancellation:** Safely aborts active transactions and refunds all inserted coins instantly upon user command.
- [x] **Accurate State-Based Behavior:** Fully synchronous design preventing race conditions or invalid transaction cycles.


 
