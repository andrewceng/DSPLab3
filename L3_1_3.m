f_range = 600:1600;
w = 2*pi*T.*f_range;
yDT1 = freqz(y1,1,w);
yDT2 = freqz(y2,1,w);
yDT3 = freqz(y3,1,w);

figure;
xDT1 = abs(yDT1/max(yDT1));
xz1 = abs(yz1/max(yz1));
plot(f_range,xDT1,'b',fM/(2*pi*T),xz1,'ro','markerfacecolor','r');
title('normalized spectrum of decoded key 3');
ylim=[0 1.2];
xlabel('frequency (Hz)');
xticks([697,1477]);
ylabel('magnitude');
legend('DTFT',' key = 3','location','north');

figure;
xDT2 = abs(yDT2/max(yDT2));
xz2 = abs(yz2/max(yz2));
plot(f_range,xDT2,'b',fM/(2*pi*T),xz2,'ro','markerfacecolor','r');
title('normalized spectrum of decoded key 4');
ylim=[0 1.2];
xlabel('frequency (Hz)');
xticks([770, 1209]);
ylabel('magnitude');
legend('DTFT','key = 4','location','north');

figure;
xDT3 = abs(yDT3/max(yDT3));
xz3 = abs(yz3/max(yz3));
plot(f_range,xDT3,'b',fM/(2*pi*T),xz3,'ro','markerfacecolor','r');
title('normalized spectrum of decoded key 6');
ylim=[0 1.2];
xlabel('frequency (Hz)');
xticks([770, 1477]);
ylabel('magnitude');
legend('DTFT','key = 6','location','north');















