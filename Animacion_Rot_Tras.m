
%*******************Rotaciones de un objeto (XYZ) (-Z)********************

% Con este programa es posible generar la rotaci�n de un paralelep�pedo
% 30� en el eje X, 90� en el eje Y y 180� en el eje Z, adem�s de una
% traslaci�n final de 2 unidades sobre el eje Z negativo. Todos estos
% movimientos se hacen de forma secuencial y con respecto al sistema fijo
% de referencia.
% Para asegurar el funcionamiento del c�digo se hace uso de las funciones
% <<Rot_X>>, <<Rot_Y>>, <<Rot_Z>> y <<Dibujar_Objeto>> pertenecientes al
% paquete de Herramientas Matem�ticas de Rob�tica I.


% Efrain A. Rodriguez Gasca - Ingenier�a Mecatr�nica - 23/03/2014
%                   Universidad de Pamplona.

%-------------------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matem�ticas
% de Rob�tica I.
%-------------------------------------------------------------------------

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotaci�n en el eje X.

Tetta=(pi*30)/180;              % Conversi�n de grados a radianes.
Ang=0:0.1:Tetta;                % Vector de recorrido.


for i=1:length(Ang)             % Ciclo de control de la simulaci�n (eje X).
    
  R=Rot_X(Ang(i));              % Llamado de la funci�n Rot_X.
  P=[0;0;0];                    % Vector traslaci�n.
  M1=[R,P;0,0,0,1];             % Matr�z de transformaci�n homog�nea.
  
  Dibujar_Objeto(M1,2,2.5,4);   % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotaci�n en el eje Y.
Ang=0:0.1:pi/2;                 % Vector de recorrido.

for i=1:length(Ang)             % Ciclo de control de la simulaci�n (eje Y).
    
  R=Rot_Y(Ang(i));              % Llamado de la funci�n Rot_Y.
  P=[0;0;0];                    % Vector traslaci�n.
  M2=[R,P;0,0,0,1];             % Matr�z de transformaci�n homog�nea.
  M3=M2*M1;                     % Premultiplicaci�n de matrices.
  
  Dibujar_Objeto(M3,2,2.5,4);   % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%Rotaci�n en el eje Z.

Ang=0:0.1:pi;                   % Vector de recorrido.

for i=1:length(Ang)             % Ciclo de control de la simulaci�n (eje Z).
    
  R=Rot_Z(Ang(i));              % Llamado de la funci�n Rot_Z.
  P=[0;0;0];                    % Vector traslaci�n.
  M4=[R,P;0,0,0,1];             % Matr�z de transformaci�n homog�nea. 
  M5=M4*M3;                     % Premultiplicaci�n de matrices.
  
  Dibujar_Objeto(M5,2,2.5,4);   % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Traslaci�n sobre el eje Z negativo.

L=0:0.05:2; L=-L;               % Vector de recorrido.

for i=1:length(L)               % Ciclo de control de la simulaci�n (eje -Z).
    
  P=[0;0;L(i)];                 % Vector traslaci�n.          
  M6=[eye(3),P;0,0,0,1];        % Matr�z de transformaci�n homog�nea.
  Dibujar_Objeto(M6*M5,2,2.5,4);% Llamado de la funci�n Dibujar_Objeto.
    
  % Sentencias auxiliares del c�digo
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end


