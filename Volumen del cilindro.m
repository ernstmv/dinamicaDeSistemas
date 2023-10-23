k1=input('Dame el valor de k1:_');
k2=input('Dame el valor de k2:_');
r=input('Dame el valor del radio del cilindro:_');
t=[0:0.1:100];
Ac=pi*power(r,2);
alpha=k2/Ac;
K=k1/Ac;
ht=K*exp(-alpha*t);%Funcion en el tiempo
Num=K;
Den=[1 alpha];
Gs=tf(Num,Den);
figure(1)
subplot(2,1,1);impulse(Gs);
grid on
subplot(2,1,2);plot(t,ht);
xlabel('Tiempo(s)');
ylabel('Altura(m)');
grid on



