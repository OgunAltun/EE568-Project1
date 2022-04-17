aa=0.01;
bb=2.177e-6;
cc=1.704;
L=250e-6;
I=24;

le=243e-3;
Ae=358e-6;
mu0=4*pi*1e-7;
% H=1:1:300; %Oersteds
mu_r0=40;
% mu_r=mu_r0./(aa+bb*H.^cc)/100;
R=le/(mu_r0*mu0*Ae);
N=ceil(sqrt(L*R));
H=N*I/(le*100)*1.26;
%%
while 1
    mu_r=mu_r0./(aa+bb*H.^cc)/100;
    R=le/(mu_r*mu0*Ae);
    Nold=N;
    N=ceil(sqrt(L*R));
    H=N*I/(le*100)*1.26;
    if(Nold==N)
    break
    end
end

%%

AL=[74 70  65  60   50   40];
AT=[1  400 800 1200 1850 2600];

N_AL=ceil(sqrt(L*1e9/AL(1)));
while 1
    ALx=interp1(AT,AL,N_AL*I);
    Nold_AL=N_AL;
    N_AL=ceil(sqrt(L*1e9/ALx));
    if(Nold_AL==N_AL)
    break
    end
end