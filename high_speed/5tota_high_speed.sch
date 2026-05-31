v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -100 130 -70 {lab=#net1}
N 170 -130 250 -130 {lab=#net1}
N 290 -100 290 -70 {lab=VOUT}
N 130 -90 210 -90 {lab=#net1}
N 210 -130 210 -90 {lab=#net1}
N 130 -10 290 -10 {lab=#net2}
N 210 -10 290 -10 {lab=#net2}
N 210 -10 210 10 {lab=#net2}
N 130 -160 290 -160 {lab=VDD}
N 210 -180 210 -160 {lab=VDD}
N 210 70 210 90 {lab=GND}
N -20 -30 -20 10 {lab=Ibias}
N -20 -20 50 -20 {lab=Ibias}
N 50 -20 50 40 {lab=Ibias}
N 20 40 170 40 {lab=Ibias}
N -20 70 -20 80 {lab=GND}
N 290 -90 400 -90 {lab=VOUT}
N 130 -40 130 -10 {lab=#net2}
N 290 -160 290 -130 {lab=VDD}
N 130 -160 130 -130 {lab=VDD}
N 290 -40 290 -10 {lab=#net2}
N -20 40 -20 70 {lab=GND}
N 210 40 210 70 {lab=GND}
N -20 80 210 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 110 -40 0 0 {name=M2
W=20
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 310 -40 0 1 {name=M1
W=20
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 190 40 0 0 {name=M5
W=40
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 150 -130 0 1 {name=M3
W=40
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 270 -130 0 0 {name=M4
W=40
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 210 -180 2 0 {name=p1 lab=VDD}
C {ipin.sym} 210 90 2 0 {name=p2 lab=GND}
C {ipin.sym} 90 -40 0 0 {name=p3 lab=VINP}
C {ipin.sym} 330 -40 2 0 {name=p4 lab=VINN}
C {sky130_fd_pr/nfet_01v8.sym} 0 40 0 1 {name=M6
W=20
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 400 -90 0 0 {name=p6 lab=VOUT}
C {ipin.sym} -20 -30 0 0 {name=p5 lab=Ibias}
