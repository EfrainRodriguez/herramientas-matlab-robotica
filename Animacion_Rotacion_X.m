
%**************Animacion de la rotación sobre el eje X**************

% Con la ejecución de este código es posible apreciar la animación
% de un sistema coordenado fijo de referencia y un sistema móvil de 
% un objeto que gira alrededor del eje X.
% Para la armar la estructura del programa se hace apoyo en las funciones
% <<Dibujar_Sistema_Coordenado>> y <<Rot_X>>, ambas del paquete de
% Herramientas Matemáticas de Robótica I.


% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 23/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------


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
    Px=4;
    Py=5;
    Pz=5;
    R=Rot_X(Ang(i));
    A1=[R(1,1),R(1,2),R(1,3),Px;R(2,1),R(2,2),R(2,3),Py;R(3,1),R(3,2),R(3,3),Pz;0,0,0,1];
    t1=3;
    s1='1';
    %-----------------------------------------------------------------

    Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema móvil
    
    %-----------------------------------------------------------------
    
    % Sentencias auxiliares del código
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
end








