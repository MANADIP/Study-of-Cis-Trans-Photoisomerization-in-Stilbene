memory,2,G
print,orbital,basis
symmetry,nosym
geometry=trans-SB-input.xyz
basis=6-31g


{hf
wf,96,1,0
print,20
}

{casscf
occ,49
closed,47
wf,96,1,0;state,2
print,natorb
cpmcscf,grad,2.1,[spin=0],[ms2=0],[accu=1.d-8],[record=5101.1]
}

{optg}

