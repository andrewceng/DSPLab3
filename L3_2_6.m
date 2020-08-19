freq = [f1,f2];
phase = [(phaseDelay_xf_125 + 0.0255) , (phaseDelay_xf_25 + timeDelay_xf_25)];
figure()
plot(f_init, -1*tau(f_init), 'b', freq,-1*tau(freq), 'k.',freq, phase, 'r.')
title('postfilter phase delay');
xlabel('f(kHz)');
ylabel('t(f) (msec)');
legend('phase delay','exact','estimated');
grid on;
fprintf('\n phase delay | exact | estimated \n')
fprintf('----------------------------\n')
fprintf('%10.4f | %6.4f | %6.4f \n', [freq; tau(freq)*-1; phase])