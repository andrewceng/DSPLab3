t = linspace(0,8,1000);
a = 1;
f0 = 0.5;
fs1 = 1;
fs2 = 2;
omega = @(fs) 2*pi*fs;
omega0 = omega(f0);
omega1 = omega(fs1);
omega2 = omega(fs2);
x = @(t) t.*exp(-a.*t).*exp(omega0.*t.*1i);
xt = x(t);

figure();
s1 = 0:8;
xs1 = x(s1);
plot(t,xt,'b',s1,xs1,'ro','markerfacecolor','r');
title('x(t) = te^-^a^tcos(w_0t), f_s=1');
xlabel('t (sec)');
ylabel('x(t)');
legend('analog','samples');

figure();
s2 = 0:0.5:8;
xs2 = x(s2);
plot(t,xt,'b',s2,xs2,'ro','markerfacecolor','r');
title('x(t) = te^-^a^tcos(w_0t), f_s=2');
xlabel('t (sec)');
ylabel('x(t)');
legend('analog','samples');