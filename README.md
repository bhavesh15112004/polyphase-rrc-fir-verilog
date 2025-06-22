# 🚀 RRC-based QAM Transmitter in Verilog

This project implements a **QAM transmitter** using a **Root Raised Cosine (RRC) pulse shaping filter**, complete with symbol synchronization, polyphase interpolation, and testbench verification using Python.

---

## 📦 Files Included

- `main.v` – Main Verilog module (`rrc_fir`)
- `sine_cos_rom.v` – ROM for sine/cosine QAM mapping
- `tb.v` – Testbench for RTL simulation
- `rrc.ipynb` – Python verification using convolution
- `latex.pdf` – decription in pdf format

---

## 🧠 Features

- 📡 32-QAM Modulation (configurable)
- 🔃 Serial to parallel conversion & QAM symbol mapping
- 🎯 Adaptive symbol period estimation from input edge
- 🧮 Root Raised Cosine (RRC) FIR filtering
- 🧩 Polyphase interpolation
- 🌀 Real + Imaginary (I/Q) signal generation
- 🧪 Validated with Python convolution

---

## 🛠️ How to Use

1. Load the Verilog files (`main.v`, `sine_cos_rom.v`) into ModelSim/QuestaSim.
2. Use `tb.v` to simulate.
3. Open `rrc.ipynb` in Jupyter to verify output using Python.

---

## 👤 Author 

- **Author**: Bhavesh Mali  
---

## 📄 License

MIT License  
This project is developed by **Bhavesh Mali** .
See `LICENSE` for details.
