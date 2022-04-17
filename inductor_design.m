aa=0.01;
bb=2.177e-6;
cc=1.704;
L=250e-6;
I=24;

le=243e-3;
Ae=358e-6;
mu0=4*pi*1e-7;

mu_r0=40;

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
