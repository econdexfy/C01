v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -110 70 -80 {
lab=xxx}
N 70 -20 70 10 {
lab=GND}
N 70 -50 90 -50 {
lab=GND}
N 90 -50 90 -10 {
lab=GND}
N 70 -10 90 -10 {
lab=GND}
N 70 -90 180 -90 {
lab=xxx}
N 30 -140 30 -50 {
lab=IN}
N 20 -100 30 -100 {
lab=IN}
N 70 -210 70 -170 {
lab=VDD}
N 70 -140 90 -140 {
lab=VDD}
N 90 -190 90 -140 {
lab=VDD}
N 70 -190 90 -190 {
lab=VDD}
C {symbols/pfet_03v3.sym} 50 -140 0 0 {name=M1
L=0.28u
W=0.44u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 50 -50 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 180 -90 0 0 {name=p1 lab=OUT}
C {devices/iopin.sym} 70 -210 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 70 10 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} 20 -100 2 0 {name=p4 lab=IN}
