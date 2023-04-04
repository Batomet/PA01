k=[0.7,1.6];
T=[1.3,0.9];

licz = [0,k];
mian = [T,1];
kolor1 =['R','M'];
kolor2=['G','B'];

czas = 0:0.1:15;

%[y.s,x.s,czas.s] = step(licz,mian,czas);
%[y.i,x.i,czas.i] = impulse(licz,mian,czas);
%subplot(1,2);

figure(1)
for l = 1:2
    licz = [0,k(l)];
    mian = [T(l),1];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end

%2
T1=T;
T2=T+1;
figure(2)
for l = 1:2
    licz = [0,0,k(l)];
    mian = [T1(l)*T2(l),T1(l)+T2(l),1];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end

%3
figure(3)
ksi=3;
for l = 1:2
    licz = [0,0,k(l)];
    mian = [T(l)^2,2*ksi*T(l),1];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end

%0.3
figure(4)
ksi=0.3;
for l = 1:2
    licz = [0,0,k(l)];
    mian = [T(l)^2,2*ksi*T(l),1];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end

%4
figure(5)
Ti=[3,0.5]
for l = 1:2
    licz = [0,0,k(l)];
    mian = [T(l)*Ti(l),Ti(l),0];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end

%5
figure(6)
Td=[3,0.5]
for l = 1:2
    licz = [Td(l),0];
    mian = [T(l),1];

    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    %legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end
%6
figure(7)
theta = 2;
    n = 2;
    k = 1;
for l = 1:2
    [licz_op, mian_op] = pade(theta,n);
    licz_iner =[0,k];
    mian_iner =[T,1];
    [licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);
    obiekt=tf(licz_iner,mian_iner,'outputdelay',theta);
    
    subplot(1,2,1)
    [y_s,x_s,czas_s] = step(licz,mian,czas);
    plot(czas_s,y_s,kolor1(l));
    legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Stepowa')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    subplot(1,2,2)
    [y_i,x_i,czas_i] = impulse(licz,mian,czas);
    plot(czas_i,y_i,kolor2(l));
    legend(["k=0,7;T=1.3","k=1.6;T=0.9"])
    title('Odpowiedź Responsywna')
    ylabel('Amplituda')
    xlabel('Czas(sec)')
    hold on
    
end
