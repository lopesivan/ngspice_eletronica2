* Circuito Figura 4.81

.param R1val  = 39k
.param R2val  = 3.9k
.param RCval  = 10k
.param REval  = 1.5k
.param VCCval = 22V


.include ./2n2222.lib

Vcc 1 0 DC={VCCval}
R1 1 B {R1val}
R2 B 0 {R2val}
RC 1 C {RCval}
RE E 0 {REval}
*Q1 C B E 2N2222
Q1  C B E QGEN

.model QGEN npn(BF=100 IS=1.2602e-15)

* .model Q2N2222 NPN(IS=1E-14 VAF=100 BF=200
* + IKF=0.3 XTB=1.5 BR=3 CJC=8E-12 CJE=25E-12
* + TR=100E-9 TF=400E-12 ITF=1 VTF=2 XTF=3 RB=10
* + RC=.3 RE=.2)


* *SRC=2N2222;QN2222;BJTs NPN;Gen. Purpose;30V 800mA
* *pinout TO-18 3 2 1
* .MODEL Q2N2222 NPN (IS=15.2F NF=1 BF=105 VAF=98.5 IKF=.5
* + ISE=8.2P NE=2 BR=4 NR=1 VAR=20 IKR=.225 RE=.373 RB=1.49
* + RC=.149 XTB=1.5 CJE=35.5P CJC=12.2P TF=500P TR=85N)
* *   Motorola 30 Volt  .8 Amp  300 MHz  SiNPN  Transistor  04-11-1991
* *PINOUT TO-18 3 2 1


.control
op
run
print all
.endc

.end
