%% Matlab code for generating the Error Function
syms E(u,v)
Sxx = 105983042.0; %Sigma of Ixx over window for a given corner point
Syy = 105671174.0; %Sigma of Iyy over window for the given corner point
Sxy = 13718014.0;  %Sigma of Ixy over window for the given corner point

E(u,v) = Sxx*u^2 + 2*Sxy*u*v + Syy*v^2; % Error function
fsurf(E(u,v),[-20 20])
fcontour(E(u,v),[-20 20])