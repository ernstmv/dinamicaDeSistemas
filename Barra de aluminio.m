%La dinamica de una barra de alumino recalentada a 100 grados y en 30 min.
%sufre enfriamiento y decae su temperatura a 78 y su coeficiente de enfriamiento es de 0.0121
%DT/Dt = -k(T-Ta)
%T(s) = 100/s +0.01 u + (27.72)(0.0121)/s(s+0.0121)
%Funcion de transferencia general
%T(s) = 100S+(27.72)(0.0121)/ s^2+0.0121s

clc
clear all
Gs=0;
%definir el denominador y numerador de la funcion de transferencia
t=[0:0.1:1000];
Tt=72.28*exp(-0.0121*t)+27.72;
Num=[100 (27.72*0.0121)];
Den=[1 0.0121 0];
Gs=tf(Num,Den);
figure(1)
subplot(2,1,1);impulse(Gs)
grid on

subplot(2,1,2);plot(t,Tt);
xlabel('Tiempo (min');
ylabel('Temperatura (°C');
grid on
