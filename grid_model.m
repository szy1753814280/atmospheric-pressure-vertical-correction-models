function p = grid_model(lat,lon,doy,p0,h,h0,apara)

dh = h - h0;

C1 = cos(2*pi*doy/365.25);
S1 = sin(2*pi*doy/365.25);
C2 = cos(4*pi*doy/365.25);
S2 = sin(4*pi*doy/365.25);


para = apara(apara(:,1)==lat&apara(:,2)==lon,:);

a0 = para(:,3);
a1 = para(:,4);
a2 = para(:,5);
a3 = para(:,6);
a4 = para(:,7);

a = a0 + a1*C1 + a2*S1 + a3*C2 + a4*S2;
           
p = p0.*(1-a.*dh).^5.255;

