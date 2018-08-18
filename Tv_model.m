function p = Tv_model(pc,tc,hc,h,Q)

gm = 9.80665;
M = 0.0289644;
R = 8.31432;

tv = tc.*(1+0.6077*Q);

a = -gm*M*(h-hc)./(R*tv);

p = pc.*exp(a);