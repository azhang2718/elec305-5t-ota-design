v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 780 0 1580 400 {flags=graph
y1=23
y2=78
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7264762
x2=2.9344363
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"VOUT (dB); vout db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/5t_ota_ac.raw}
B 2 780 480 1580 880 {flags=graph
y1=180
y2=360
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7264762
x2=2.9344363
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"VOUT (deg); ph(vout)\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/5t_ota_ac.raw}
N 240 220 240 250 {lab=#net1}
N 210 220 320 220 {lab=#net1}
N 320 220 330 220 {lab=#net1}
N 450 10 450 220 {lab=VOUT}
N 390 220 450 220 {lab=VOUT}
N 100 220 150 220 {lab=#net2}
N 80 220 100 220 {lab=#net2}
N 450 10 530 10 {lab=VOUT}
N 80 30 80 220 {lab=#net2}
N 80 30 150 30 {lab=#net2}
C {vsource.sym} 0 130 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 160 0 0 {name=l1 lab=0}
C {gnd.sym} 150 90 0 0 {name=l2 lab=0}
C {lab_pin.sym} 0 100 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 150 10 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -70 130 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} -70 160 0 0 {name=l3 lab=0
value=0.9}
C {lab_pin.sym} -70 100 1 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 50 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {isource.sym} -140 130 0 0 {name=I0 value=100n}
C {lab_pin.sym} -140 160 3 0 {name=p7 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 150 70 0 0 {name=p8 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -140 100 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 650 530 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 80 460 0 0 {name=SIM only_toplevel=true value="
.control
set altshow

save all
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm3.msky130_fd_pr__pfet_01v8[gm]
save @m.x1.xm3.msky130_fd_pr__pfet_01v8[id]
save @m.x1.xm4.msky130_fd_pr__pfet_01v8[gm]
save @m.x1.xm4.msky130_fd_pr__pfet_01v8[id]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm5.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm6.msky130_fd_pr__nfet_01v8[id]

op
show m : gm id vgs vds cgg cgs cgd
setplot op1
write ~/.xschem/simulations/5t_ota_op.raw all

ac dec 100 1 1G
setplot ac1
write ~/.xschem/simulations/5t_ota_ac.raw all

let gain_db = db(v(vout))
let phase = 180/PI*cph(v(vout))
plot gain_db phase

meas ac dc_gain find gain_db at=1
meas ac fu when gain_db=0
meas ac phase find phase when gain_db=0
print dc_gain
print fu
print phase
.endc
"
}
C {ind.sym} 360 220 1 0 {name=L4
m=1
value=1T
footprint=1206
device=inductor}
C {capa.sym} 240 280 0 0 {name=C1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 180 220 1 0 {name=V3 value="dc 0 ac 1" savecurrent=false}
C {gnd.sym} 240 310 0 0 {name=l5 lab=0}
C {capa.sym} 530 40 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 70 0 0 {name=l6 lab=0}
C {lab_pin.sym} 530 10 2 0 {name=p5 sig_type=std_logic lab=VOUT}
C {lowpower.sym} 300 50 0 0 {name=x1}
