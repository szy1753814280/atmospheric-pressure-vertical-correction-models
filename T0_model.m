function p = T0_model(pc,tc,hc,h,b)

r = 0.0065;
M = 0.0289644;
R = 8.31432;
B = b*pi/180;

g = 9.8063*(1-1e-07*(hc+h)/2*(1-0.0026373*cos(2*B)+5.9e-06*cos(2*B)*cos(2*B)));

p = pc.*((tc-r.*(h-hc))./tc).^(g.*M./(R.*r));