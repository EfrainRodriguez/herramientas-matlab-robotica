
%**********************Rotaciones de un objeto (313)**********************

% Al ejecutar este algoritmo se genera una animación con una serie
% de tres rotaciones sucesivas (eje W, eje U; eje W).
% Para observar la animacion se hace uso de la función Dibujar_Objeto,
% la cual recibe como parámetros de entrada la matríz de transformación
% homogénea y las dimensiones del paralelepípedo, el cual es el objeto
% que se hace girar.

% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 23/03/2014
%                   Universidad de Pamplona.

%-------------------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-------------------------------------------------------------------------


%/////////////////////////////////////////////////////////////////////////
% Rotación en el eje W (45º).

Ang=0:0.1:pi/4;           % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control para la simulación (eje W).
    
  R=Rot_Z(Ang(i));        % Llamado de la función Rot_Z.
  P=[0;0;0];              % Vector traslación.
  M1=[R,P;0,0,0,1];       % Matríz de transformación homogénea.
  
  Dibujar_Objeto(M1,2,2.5,4);  % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotación en el eje U (90º).

Ang=0:0.1:pi/2;           % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control de la simulación (eje U).
    
  R=Rot_X(Ang(i));        % Llamado de la función Rot_X.
  P=[0;0;0];              % Vector traslación.
  M2=[R,P;0,0,0,1];       % Matríz de transformación homogénea.
  M3=M1*M2;               % Postmultiplicación de matrices.
  
  Dibujar_Objeto(M3,2,2.5,4);  % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotación en el eje W (180º).

Ang=0:0.1:pi;             % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control de la simulación (eje W).
    
  R=Rot_Z(Ang(i));        % Llamado de la función Rot_Z.
  P=[0;0;0];              % Vector traslación.
  M4=[R,P;0,0,0,1];       % Matríz de transformación homogénea.
  
  Dibujar_Objeto(M3*M4,2,2.5,4);  % Llamado de la función Dibujar_Objeto.
  
  % Sentencias auxiliares del código
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

