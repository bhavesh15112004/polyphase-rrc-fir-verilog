# 🚀 Polyphase RRC-Based QAM Transmitter (Verilog + Python)

This project implements a **QAM transmitter** with **Root Raised Cosine (RRC) pulse shaping**, featuring serial-to-parallel conversion, polyphase interpolation, and Python-based verification.

---

## 📁 Project Structure

| File | Description |
|------|-------------|
| `main.v`              | Top-level Verilog module implementing QAM + RRC filtering |
| `sine_cos_rom.v`      | ROM for sine/cosine lookup (used in QAM mapping) |
| `tb.v`                | Testbench for simulating the full transmitter |
| `rrc.ipynb`           | Python notebook for RRC coefficient generation and validation |
| `latex.pdf`           | Full system explanation in PDF (generated via LaTeX) |
| `validation_report.pdf` | Visual comparison of Python vs. Verilog waveforms |

---

## 💡 Key Features

- 🧊 **Configurable 32-QAM modulation**
- ⏱️ **Adaptive symbol period estimation** (from edge detection)
- 📶 **Serial-to-parallel data processing**
- 📐 **Polyphase RRC FIR pulse shaping**
- ♾️ **Real and Imaginary (I/Q) output generation**
- 🔁 **Testbench-based RTL simulation**
- ✅ **Python-based signal validation using convolution and plotting**

---

## ▶️ How to Run

### 🔧 Verilog Simulation
1. Open the project in **ModelSim**, **QuestaSim**, or any Verilog simulator.
2. Load `main.v`, `sine_cos_rom.v`, and `tb.v`.
3. Run the simulation and observe outputs (`real_out`, `imag_out`) via waveform viewer or file logging.

### 🧪 Python Validation
1. Open `rrc.ipynb` in Jupyter Notebook.
2. Run the cells to:
   - Generate RRC filter coefficients.
   - Read Verilog simulation output.
   - Compare it with Python-based filtered signal.

---

## 📷 Preview

> Includes validation plot comparing Verilog vs Python output in `validation_report.pdf`.

---

## 👨‍💻 Author

**Bhavesh Mali**  
- [GitHub Profile](https://github.com/bhavesh15112004)  
- Intern under guidance of Prof. Rajshekhar Bhat  
- 2nd Year BTech, IIT Dharwad  

---

## 📄 License

This project is licensed under the **MIT License**.  
See `LICENSE` file for full details.

---

## 💬 Feedback

Open to collaboration or suggestions — feel free to connect via GitHub.

