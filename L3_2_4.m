%2.1 Repeat 
fs = 1000;
fo = 0.25;
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
plot(t, x_a, 'g');
plot(t, x_p, 'r');
plot(t, x_r, 'b');
title('Rectangular Weights, f_0 = 0.25 kHz');
xlabel('t (msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)');
ylim([-2 2])
hold off
 
 
figure();
hold on
plot(t, x_a, 'g');
plot(t, x_p, 'r');
plot(t, x_h, 'b');
title('Hamming Weights, f_0 = 0.25 kHz');
xlabel('t (msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)');
ylim([-2 2])
hold off
 
 
[amax1,amax2] = max(x_p(:));
[bmax1,bmax2] = max(x_a(:));
Attenuation_25kHz = bmax1 - amax1;
PhaseDelay_25kHz = abs((bmax2-amax2+2001)*0.01);
 
 
%2.2 Repeat
[b,a] = butter(6, 2*pi*(1/2), 's');
xf = lsim(b, a, x_h, t);
[maxval,loc1] = max(xf);
timeDelay_xf_25 = abs(0.9745-maxval)
Hpost = @(f_init) polyval(b, 2*pi*i*f_init)./polyval(a,2*pi*j*f_init);
tau = @(f_init) angle(Hpost(f_init))./(2.*pi.*f_init);
phaseDelay_xf_25 = -1*tau(fo)
 
 
%2.3 Repeat
mNew = [0 1 2 3];
f_init = [0:4000]./1000;
f1_m = fo + mNew.*fs;
G_f_init = sin(pi.*f_init.*Tsample)./(pi.*f_init.*Tsample);
Gf1_m = sin(pi.*f1_m.*Tsample)./(pi.*f1_m.*Tsample);
 
 
figure()
stem(f1_m,abs(Gf1_m),'filled');
hold on;
plot(f_init, abs(G_f_init), 'g', f_init,abs(Hpost(f_init)), 'k', f_init,abs(Hpost(f_init).*G_f_init), 'r');
title('reconstruction stages, f_0 = 0.25 kHz')
xlabel('f(kHz)')
ylabel('magnitude')
legend('staircase output','|H_s_t_a_i_r(f)|','|H_p_o_s_t(f)|','H_s_t_a_i_r(f)*H_p_o_s_t(f)')
grid on;
hold off;
 
 
figure()
hold on
stem(f1_m,abs(Gf1_m.*Hpost(f1_m)),'filled','r');
hold on;
plot(f_init, abs(G_f_init), 'g', f_init,abs(Hpost(f_init)), 'k', f_init,abs(Hpost(f_init).*G_f_init), 'r');
title('reconstruction stages, f_0 = 0.25 kHz')
xlabel('f(kHz)')
ylabel('magnitude')
legend('staircase output','|H_s_t_a_i_r(f)|','|H_p_o_s_t(f)|','H_s_t_a_i_r(f)*H_p_o_s_t(f)')
grid on;
hold off;
 
 
figure()
hold on
plot(t, x_a, 'gr', t, x_p, 'r', t, x_h, 'b', t, xf, 'k');
title('postfilter output, f_0 = 0.25 kHz');
xlabel('t(msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)', '\color{black}x_f(t)');
grid on;
ylim([-2 2])

























