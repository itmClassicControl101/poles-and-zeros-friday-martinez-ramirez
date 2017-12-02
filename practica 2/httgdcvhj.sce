s =%s
poly (0 , 's')
wz1=122222.2222;
wp1=0.000002653;
wp2=376851.8519;
simpleSys=syslin('c', wz1/((s/wp1)+(s/wp2))) //funcio de transferencia
t=0:0.01:100;
y=csim('step', t, simpleSys)//funcion escalon step
plot(t,y)
xlabel('frecuencia (Hz)')
ylabel('decibeles(dB)')
