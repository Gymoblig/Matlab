sim('ZadanieAsim.slx', 'StopTime', '10'); 
plot(ans.y);
title('Diferenciálna Rovnica A');
xlabel('Čas');
ylabel('y(t)');
axis([0 5 0 0.7]); 
grid on; 
