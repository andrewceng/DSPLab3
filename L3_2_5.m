m = -20:20;
t = 0:0.01:20;
f1 = 0.125;
f2 = 0.25;
[T,M] = meshgrid(t,m);
m = [0 1 2 3];
fm1 = f1 + m.*1;
fm2 = f2 + m.*1;
Gf_m1 = sin(pi.*fm1.*Tsample)./(pi.*fm1.*Tsample);
Gf_m2 = sin(pi.*fm2.*Tsample)./(pi.*fm2.*Tsample);
Gf_m1_mag = abs(Gf_m1);
Gf_m2_mag = abs(Gf_m2);
Hpost = @(f) polyval(b, 2*pi*i*f)./polyval(a, 2*pi*j*f);
post1 = abs(Gf_m1.*Hpost(fm1));
post2 = abs(Gf_m2.*Hpost(fm2));
fprintf('\n fm = f0 + m*fs | |G(fm)| | |G(fm)Hpost(fm) | \n')
fprintf('-------------------------------------------------------------------\n')
fprintf('%10.4f %10.4f | %9.6f %9.6f | %9.6f %9.6f \n', [fm1;fm2; Gf_m1_mag; 
    Gf_m2_mag; post1; post2])