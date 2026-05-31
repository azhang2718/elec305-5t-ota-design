v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -560 -260 -560 -240 {lab=#net1}
N -560 -240 -280 -240 {lab=#net1}
N -280 -260 -280 -240 {lab=#net1}
N -430 -240 -430 -210 {lab=#net1}
N -560 -460 -560 -320 {lab=#net2}
N -280 -460 -280 -320 {lab=VOUT}
N -520 -490 -320 -490 {lab=#net2}
N -490 -490 -490 -430 {lab=#net2}
N -560 -430 -490 -430 {lab=#net2}
N -280 -400 -200 -400 {lab=VOUT}
N -560 -520 -280 -520 {lab=VDD}
N -420 -560 -420 -520 {lab=VDD}
N -640 -290 -600 -290 {lab=VINP}
N -240 -290 -200 -290 {lab=VINN}
N -760 -180 -470 -180 {lab=Ibias}
N -800 -240 -800 -210 {lab=Ibias}
N -800 -240 -730 -240 {lab=Ibias}
N -730 -240 -730 -180 {lab=Ibias}
N -800 -270 -800 -240 {lab=Ibias}
N -800 -150 -430 -150 {lab=GND}
N -630 -150 -630 -120 {lab=GND}
N -800 -180 -800 -150 {lab=GND}
N -430 -180 -430 -150 {lab=GND}
N -560 -290 -560 -260 {lab=#net1}
N -280 -290 -280 -260 {lab=#net1}
N -560 -520 -560 -490 {lab=VDD}
N -280 -520 -280 -490 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -580 -290 0 0 {name=M1
W=0.74
L=4
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
C {sky130_fd_pr/nfet_01v8.sym} -450 -180 0 0 {name=M5
W=4.55
L=2
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
C {sky130_fd_pr/nfet_01v8.sym} -260 -290 0 1 {name=M2
W=0.74
L=4
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
C {sky130_fd_pr/pfet_01v8.sym} -540 -490 0 1 {name=M3
W=2.6
L=4
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
C {sky130_fd_pr/pfet_01v8.sym} -300 -490 0 0 {name=M4
W=2.6
L=4
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
C {ipin.sym} -420 -560 0 0 {name=p1 lab=VDD}
C {iopin.sym} -200 -400 0 0 {name=p2 lab=VOUT}
C {ipin.sym} -200 -290 2 0 {name=p3 lab=VINN}
C {ipin.sym} -640 -290 0 0 {name=p4 lab=VINP}
C {sky130_fd_pr/nfet_01v8.sym} -780 -180 0 1 {name=M6
W=1
L=2
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
C {ipin.sym} -800 -270 0 0 {name=p5 lab=Ibias}
C {ipin.sym} -630 -120 3 0 {name=p7 lab=GND}
