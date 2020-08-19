mNew = [0 1 2 3];
f_init = [0:4000]./1000;
f1_m = fo + mNew.*fs;
G_f_init = sin(pi.*f_init.*Tsample)./(pi.*f_init.*Tsample);
Gf1_m = sin(pi.*f1_m.*Tsample)./(pi.*f1_m.*Tsample);


figure()
stem(f1_m,abs(Gf1_m),'filled');
hold on;
plot(f_init, abs(G_f_init), 'g', f_init,abs(Hpost(f_init)), 'k', f_init,abs(Hpost(f_init).*G_f_init), 'r')
title('Reconstruction Stages, f_0 = 0.125 kHz')
xlabel('f(kHz)')
ylabel('magnitude')
legend('staircase output','|H_s_t_a_i_r(f)|','|H_p_o_s_t(f)|','|H_s_t_a_i_r(f)*H_p_o_s_t(f)|')
grid on;
hold off;


figure()
stem(f1_m,abs(Gf1_m.*Hpost(f1_m)),'filled','r');
hold on;
plot(f_init, abs(G_f_init), 'g', f_init,abs(Hpost(f_init)), 'k', f_init,abs(Hpost(f_init).*G_f_init), 'r')
title('Reconstruction Stages, f_0 = 0.125 kHz')
xlabel('f(kHz)')
ylabel('magnitude')
legend('staircase output','|H_s_t_a_i_r(f)|','|H_p_o_s_t(f)|','|H_s_t_a_i_r(f)*H_p_o_s_t(f)|')
grid on;
hold off;


figure()
plot(t, x_a, 'gr', t, x_p, 'r', t, x_h, 'b', t, xf, 'k')
title('Postfilter Output, f_0 = 0.125 kHz');
xlabel('t (msec)');
legend('\color{green}x_a(t)', '\color{red}x_p(t)', '\color{blue}x_r(t)', '\color{black}x_f(t)','Location', 'southeast');
grid on;
ylim([-2 2])





















