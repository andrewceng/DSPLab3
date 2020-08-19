o = linspace(0,8*pi,1001);
f = o/(2*pi);
t1 = 2;
t2 = 1;
t3 = 0.5;
T = t1;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
M = 1;
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=0.5, M=1');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');
hold off



T = t1;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
M = 2;
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xm4 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(2.*M.*omega_s))).^2));
xm5 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-2.*M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o)+xm4(o)+xm5(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=0.5, M=2');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');
hold off



T = t2;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
M = 1;
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=1, M=1');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');
hold off



T = t2;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
M = 2;
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xm4 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(2.*M.*omega_s))).^2));
xm5 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-2.*M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o)+xm4(o)+xm5(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=1, M=2');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');
hold off



T = t3;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
M = 1;
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=2, M=1');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');



T = t3;
omega_s = (2*pi)/T;
xo = @(o) (1./((a+1i.*(o-omega0)).^2));
xd = @(o) (T.*exp(-a.*T).*exp(-1i.*(o-omega0).*T))./((1-exp(-a.*T).*
    exp(-1i.*(o-omega0).*T)).^2);
xm1 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-M.*omega_s))).^2)); 
xm2 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(0.*omega_s))).^2)); 
xm3 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(M.*omega_s))).^2));
xm4 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(2.*M.*omega_s))).^2));
xm5 = @(o) (1/T).*(1./((a+1i.*(o-omega0-(-2.*M.*omega_s))).^2));
xf = xm1(o)+xm2(o)+xm3(o)+xm4(o)+xm5(o);
figure();
plot(f, abs(xo(o)),'g');
hold on
plot(f, abs(T*xd(o)),'r');
hold on
plot(f,abs(T*xf),'b');
title('f_s=2, M=2');
xlabel('f(Hz)');
ylabel('|X(f)|');
axis([0 4, 0 1.2]);
legend('analog','digital','replicas');












