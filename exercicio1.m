
for i=0:-0.1:-0.5
    
    A0=eye(4);
    t0=3;
    s0='0';
    Dibujar_Sistema_Coordenado(A0,t0,s0);
    % Parámetros del sistema móvil de un objeto que gira alrededor del
    % eje X.
    Px=i;
    Py=0;
    Pz=0;
    R=eye(3);
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(110,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
    
end

for i=0:0.1:1.5
    
    A0=eye(4);
    t0=3;
    s0='0';
    Dibujar_Sistema_Coordenado(A0,t0,s0);
    % Parámetros del sistema móvil de un objeto que gira alrededor del
    % eje X.
    Px=-0.5;
    Py=i;
    Pz=0;
    R=eye(3);
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(110,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
    
end

for i=0:0.1:3
    
    A0=eye(4);
    t0=3;
    s0='0';
    Dibujar_Sistema_Coordenado(A0,t0,s0);
    % Parámetros del sistema móvil de un objeto que gira alrededor del
    % eje X.
    Px=-0.5;
    Py=1.5;
    Pz=i;
    R=eye(3);
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(110,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
    
end

temp = A1

Ang=0:0.1:pi;


for i=1:length(Ang)
    
    %-----------------------------------------------------------------
    % Parámetros del sistema coordenado fijo de referencia.
    A0=eye(4);
    t0=3;
    s0='0';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A0,t0,s0);  % Se dibuja el sistema fijo
    
    %-----------------------------------------------------------------
    % Parámetros del sistema móvil de un objeto que gira alrededor del
    % eje X.
    Px=0;
    Py=0;
    Pz=0;
    R=Rot_Y(Ang(i));
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(temp*A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(120,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
end

temp = temp * A1;

Ang=0:0.1:pi/2;


for i=1:length(Ang)
    
    %-----------------------------------------------------------------
    % Parámetros del sistema coordenado fijo de referencia.
    A0=eye(4);
    t0=3;
    s0='0';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A0,t0,s0);  % Se dibuja el sistema fijo
    
    %-----------------------------------------------------------------
    % Parámetros del sistema móvil de un objeto que gira alrededor del
    % eje X.
    Px=0;
    Py=0;
    Pz=0;
    R=Rot_Z(Ang(i));
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(temp*A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(120,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
end

temp*A1