function fern0(num)
    a1=[.85 .04;-0.04 .85];
    b1=[0;1.6];
    % queste servono per le altre parti della felce
    a2=[0.2 -0.26;0.23 0.22];
    b2=[0;1.6];
    a3=[-0.15 0.28; 0.26 0.24];
    b3=[0;0.44];
    a4=[0 0; 0 0.16];
    b4=[0 ;0];
    % punto iniziale
    x=[0.0;0.2];
    % cancella figura precedente e entra modalità hold on 
    clf;
    hold on
    for i=2:num
        x=a1*x+b1;
        plot(x(1), x(2),'bo');
    end
axis([-4,4,-1,11]);
end