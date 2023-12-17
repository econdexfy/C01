v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 50 100 70 {
lab=GND}
N -0 50 100 50 {
lab=GND}
N -0 40 -0 50 {
lab=GND}
N -0 -60 0 -20 {
lab=IN}
N 0 -60 110 -60 {
lab=IN}
N 160 -20 160 50 {
lab=GND}
N 100 50 160 50 {
lab=GND}
N 160 -140 160 -100 {
lab=VDD}
N -200 -100 -200 -70 {
lab=VDD}
N -200 -10 -200 20 {
lab=GND}
N 230 -60 280 -60 {
lab=xxx}
C {devices/vsource.sym} 0 10 0 0 {name=V1 value="PULSE(0 3.3 100p 50p 50p 200p 500p)" savecurrent=false}
C {devices/vdd.sym} 160 -140 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 100 70 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 300 -80 0 0 {name=NGSPICE only_toplevel=false value="
.control
save all
tran 3p 600p
plot IN OUT
.endc
"}
C {devices/vsource.sym} -200 -40 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/vdd.sym} -200 -100 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -200 20 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -190 100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/econde/projects/C01/design/test/inv.sym} 190 -60 0 0 {name=x1}
C {devices/lab_wire.sym} 270 -60 0 0 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 40 -60 0 0 {name=p2 sig_type=std_logic lab=IN}
