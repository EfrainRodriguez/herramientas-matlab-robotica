
%*******************Rotaciones de un objeto (XYZ) (-Z)********************

% Con este programa es posible generar la rotación de un paralelepípedo
% 30º en el eje X, 90º en el eje Y y 180º en el eje Z, además de una
% traslación final de 2 unidades sobre el eje Z negativo. Todos estos
% movimientos se hacen de forma secuencial y con respecto al sistema fijo
% de referencia.
% Para asegurar el funcionamiento del código se hace uso de las funciones
% <<Rot_X>>, <<Rot_Y>>, <<Rot_Z>> y <<Dibujar_Objeto>> pertenecientes al
% paquete de Herramientas Matemáticas de Robótica I.


% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 23/03/2014
%                   Universidad de Pamplona.

%-------------------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-------------------------------------------------------------------------

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotación en el eje X.

Tetta=(pi*30)/180;              % Conversión de grados a radianes.
Ang=0:0.1:Tetta;                % Vector de recorrido.


for i=1:length(Ang)             % Ciclo de control de la simulación (eje X).
    
  R=Rot_X(Ang(i));              % Llamado de la función Rot_X.
  P=[0;0;0];                    % Vector traslación.
  M1=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  
  Dibujar_Objeto(M1,2,2.5,4);   % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotación en el eje Y.
Ang=0:0.1:pi/2;                 % Vector de recorrido.

for i=1:length(Ang)             % Ciclo de control de la simulación (eje Y).
    
  R=Rot_Y(Ang(i));              % Llamado de la función Rot_Y.
  P=[0;0;0];                    % Vector traslación.
  M2=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  M3=M2*M1;                     % Premultiplicación de matrices.
  
  Dibujar_Objeto(M3,2,2.5,4);   % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%Rotación en el eje Z.

Ang=0:0.1:pi;                   % Vector de recorrido.

for i=1:length(Ang)             % Ciclo de control de la simulación (eje Z).
    
  R=Rot_Z(Ang(i));              % Llamado de la función Rot_Z.
  P=[0;0;0];                    % Vector traslación.
  M4=[R,P;0,0,0,1];             % Matríz de transformación homogénea. 
  M5=M4*M3;                     % Premultiplicación de matrices.
  
  Dibujar_Objeto(M5,2,2.5,4);   % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Traslación sobre el eje Z negativo.

L=0:0.05:2; L=-L;               % Vector de recorrido.

for i=1:length(L)               % Ciclo de control de la simulación (eje -Z).
    
  P=[0;0;L(i)];                 % Vector traslación.          
  M6=[eye(3),P;0,0,0,1];        % Matríz de transformación homogénea.
  Dibujar_Objeto(M6*M5,2,2.5,4);% Llamado de la función Dibujar_Objeto.
    
  % Sentencias auxiliares del código
    view(30,30);
    axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end


