sim('ZadanieCsim.slx', 'StopTime', '10'); 
plot(ans.y);
title('Diferenciálna Rovnica C');
xlabel('Čas');
ylabel('y(t)');
axis([0 9 0 0.4]); 
grid on; 
