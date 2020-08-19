[b,a] = butter(6, 2*pi*(1/2), 's');
xf = lsim(b, a, x_h, t);
[maxval,loc1] = max(xf);
timeDelay_xf_125 = abs(0.9745-maxval)
Hpost = @(finitial) polyval(b, 2*pi*i*finitial)./polyval(a,2*pi*j*finitial);
tau = @(finitial) angle(Hpost(finitial))./(2.*pi.*finitial);
phaseDelay_xf_125 = -1*tau(fo)