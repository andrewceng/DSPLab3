fs = 1000;
fo = 0.125;
M = -20:1:20;
t = 0:0.01:20;
Tsample = 1/fs;
[T,M] = meshgrid(t,M);
fm = fo + M.*fs;
wm = 0.54 + 0.46.*cos(pi.*M./20);
Gf = sin(pi.*fm.*Tsample)./(pi.*fm.*Tsample);
Gfo = sin(pi.*fo.*Tsample)./(pi.*fo.*Tsample);
x_a = cos(2.*pi.*fo.*T);
x_p = Gfo.*cos(2.*pi.*fo.*T - pi.*fo.*Tsample);
x_r = sum(Gf.*cos((2.*pi.*fm.*T) - (pi.*fm.*Tsample)));
x_h = sum(wm.*Gf.*cos((2.*pi.*fm.*T) - (pi.*fm.*Tsample)));


figure();
hold on
p1 = plot(t, x_a,'g');
p2 = plot(t, x_p, 'r');
p3 = plot(t, x_r, 'b');
title('Rectangular weights, f_0 = 0.125 kHz');
xlabel('t (msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)','Location','southeast');
ylim([-2 2])
hold off


figure();
hold on
plot(t, x_a, 'g');
plot(t, x_p, 'r');
plot(t, x_h, 'b');
title('Hamming weights, f_0 = 0.125 kHz');
xlabel('t (msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)','Location','southeast');
ylim([-2 2])
hold off


[amax1,amax2] = max(x_p(:));
[bmax1,bmax2] = max(x_a(:));
Attenuation_125kHz = bmax1 - amax1
PhaseDelay_125kHz = abs((bmax2-amax2+2001)*0.01)











