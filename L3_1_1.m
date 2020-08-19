space = linspace(0,0.9,7200);
y = dtmfsig(177007536);
plot(space,y,'b');
title('DTMF time signal');
axis([0 0.9, -3 3]);
xlabel('t (sec)');
ylabel('y(t)');