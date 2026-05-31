# ELEC 305 – Project 1: 5-Transistor OTA Design

**Rice University | ELEC 305 – Analog Integrated Circuit Design**

---

## Overview

This project implements two 5-transistor operational transconductance amplifier (5T-OTA) topologies in the **SkyWater 130nm (sky130)** process, each optimized for a different design objective:

| Topology | Primary Goal |
|----------|-------------|
| **High Speed** | Maximize unity-gain bandwidth (fu) |
| **Low Power** | Minimize power consumption |

Schematics were designed in **xschem** and simulated with **ngspice**.

---

## Repository Structure

```
.
├── high_speed/
│   ├── 5tota_high_speed.sch              # High-speed OTA schematic
│   ├── 5tota_high_speed_testbench.sch    # Testbench for AC/DC simulation
│   ├── 5tota_high_speed.png              # Schematic screenshot
│   ├── high_speed_simu_results.png       # Simulation results plot
│   └── 5tota_high_speed_simulation_results  # Raw ngspice output log
├── low_power/
│   ├── 5tota_lowpower.sch                # Low-power OTA schematic
│   ├── 5tota_lowpower_testbench.sch      # Testbench for AC/DC simulation
│   ├── simu_results.png                  # Simulation results plot
│   └── 5tota_lowpower                   # Raw ngspice output log
├── docs/
│   └── ELEC_305_Project_1.pdf           # Project specification
└── README.md
```

---

## 5T-OTA Topology

The 5-transistor OTA is a simple single-stage amplifier consisting of:

- **M1, M2** – NMOS differential input pair
- **M3, M4** – PMOS current mirror active load
- **M5** – NMOS tail current source (biased by Ibias)

The output is taken single-endedly from the drain of M1/M3. The key design trade-off is between **bandwidth** (set by gm/CL) and **power** (set by the bias current).

---

## Design Targets

Both designs target operation in the sky130 1.8V process:

- Supply voltage: **VDD = 1.8 V**
- Process: **SkyWater 130nm (sky130_fd_pr)**
- Device models: `nfet_01v8`, `pfet_01v8`

---

## Simulation Results

Simulations were run using **ngspice** in batch mode with AC and operating-point analyses at **T = 27°C**.

### High-Speed Design

| Parameter | Value |
|-----------|-------|
| DC Gain | **40.5 dB** |
| Unity-Gain Bandwidth (fu) | **226.8 MHz** |
| Phase Margin (from −180°) | ~72.6° |
| Tail bias current | 100 µA |

Key transistor sizing (W/L in µm/µm):

| Device | Type | W | L |
|--------|------|---|---|
| M1, M2 | NMOS | 20 | 1 |
| M3, M4 | PMOS | 40 | 1 |
| M5     | NMOS | 40 | 1 |

### Low-Power Design

| Parameter | Value |
|-----------|-------|
| DC Gain | **42.3 dB** |
| Unity-Gain Bandwidth (fu) | **734.7 kHz** |
| Phase Margin (from −180°) | ~88.2° |
| Tail bias current | 100 nA |

---

## Tools

| Tool | Purpose |
|------|---------|
| [xschem](https://xschem.sourceforge.io/) | Schematic capture |
| [ngspice](https://ngspice.sourceforge.io/) | SPICE simulation |
| [SkyWater sky130 PDK](https://github.com/google/skywater-pdk) | Process design kit |

---

## How to Simulate

1. Install xschem and ngspice with the sky130 PDK.
2. Open the desired testbench schematic:
   ```bash
   xschem high_speed/5tota_high_speed_testbench.sch
   # or
   xschem low_power/5tota_lowpower_testbench.sch
   ```
3. Run the simulation from xschem (Simulate → Run ngspice) or invoke ngspice directly from the generated `.spice` netlist.

---

## Author

Anthony Zhang — Rice University, ELEC 305
