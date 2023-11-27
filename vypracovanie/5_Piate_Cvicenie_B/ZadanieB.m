sim('ZadanieBsim.slx', 'StopTime', '10'); 
plot(ans.y);
title('Diferenciálna Rovnica B');
xlabel('Čas');
ylabel('y(t)');
axis([0 7 0 0.3]); 
grid on; 
