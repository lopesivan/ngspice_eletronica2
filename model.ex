stepping models

Q1 N001 N002 0 0 mod1
V1 N001 0 0
I1 0 N002 20u
.dc V1 0 3 1m

* 2n2222
.model mod1  NPN ( is=1e-14 vaf=100 bf=200 ikf=0.3 xtb=1.5 
+ br=3 cjc=8e-12 cje=25e-12 tr=100e-9 tf=400e-12 itf=1 
+ vtf=2 xtf=3 rb=10 rc=.3 re=.2 )

.control
    listing e
    setplot new

    altermod mod1 file = 2n3904.mod
    run
    setplot unknown1
    setscale dc1.n001
    let iq1 = -dc1.i(v1)
    altermod mod1 file = 2n2222.mod
    run
    setplot unknown1
    let iq2 = -dc2.i(v1)
    set filetype=ascii
    write stepping_models.raw
    set keyposition="right bottom"
    plot iq1 iq2
    quit
.endc

.end
