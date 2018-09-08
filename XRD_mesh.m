dat=importdata('191717.dat');
z=dat(1:end,4);
x=dat(1:end,1);
y=dat(1:end,2);

%Create regular grid across data space
[X,Y] = meshgrid(linspace(min(x),max(x),300), linspace(min(y),max(y),300));

%create contour plot
surf(X,Y,griddata(x,y,z,X,Y));
view(2);
shading interp;
