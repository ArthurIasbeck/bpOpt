global h;
global hm;
global hc;
global d3;
global r0;
global h0;
global r;
global cb;
global ct;
global gama0;

h = 0.1625;
hm = 0.0425;
hc = 0.084;
d3 = 0.15;
r0 = 0.02;
h0 = 0.03;
r = 0.01;
cb = 0.015;
ct = 0.03;
gama0 = atan2(hc,d3);

x0 = [-1,1]; % Make a starting guess at the solution
options = optimoptions(@fmincon,'Algorithm','sqp');
[x,fval] = fmincon(@objfun,x0,[],[],[],[],[],[],... 
   @confuneq,options);
[c,ceq] = confuneq(x);% Check the constraint values at x

clc;
disp('x');
disp(x);
disp('fval');
disp(fval);
disp('c');
disp(c);
disp('ceq');
disp(ceq);