
%**********************Rotaciones de un objeto (313)**********************

% Al ejecutar este algoritmo se genera una animaci�n con una serie
% de tres rotaciones sucesivas (eje W, eje U; eje W).
% Para observar la animacion se hace uso de la funci�n Dibujar_Objeto,
% la cual recibe como par�metros de entrada la matr�z de transformaci�n
% homog�nea y las dimensiones del paralelep�pedo, el cual es el objeto
% que se hace girar.

% Efrain A. Rodriguez Gasca - Ingenier�a Mecatr�nica - 23/03/2014
%                   Universidad de Pamplona.

%-------------------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matem�ticas
% de Rob�tica I.
%-------------------------------------------------------------------------


%/////////////////////////////////////////////////////////////////////////
% Rotaci�n en el eje W (45�).

Ang=0:0.1:pi/4;           % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control para la simulaci�n (eje W).
    
  R=Rot_Z(Ang(i));        % Llamado de la funci�n Rot_Z.
  P=[0;0;0];              % Vector traslaci�n.
  M1=[R,P;0,0,0,1];       % Matr�z de transformaci�n homog�nea.
  
  Dibujar_Objeto(M1,2,2.5,4);  % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotaci�n en el eje U (90�).

Ang=0:0.1:pi/2;           % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control de la simulaci�n (eje U).
    
  R=Rot_X(Ang(i));        % Llamado de la funci�n Rot_X.
  P=[0;0;0];              % Vector traslaci�n.
  M2=[R,P;0,0,0,1];       % Matr�z de transformaci�n homog�nea.
  M3=M1*M2;               % Postmultiplicaci�n de matrices.
  
  Dibujar_Objeto(M3,2,2.5,4);  % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
% Rotaci�n en el eje W (180�).

Ang=0:0.1:pi;             % Vector de recorrido.

for i=1:length(Ang)       % Ciclo de control de la simulaci�n (eje W).
    
  R=Rot_Z(Ang(i));        % Llamado de la funci�n Rot_Z.
  P=[0;0;0];              % Vector traslaci�n.
  M4=[R,P;0,0,0,1];       % Matr�z de transformaci�n homog�nea.
  
  Dibujar_Objeto(M3*M4,2,2.5,4);  % Llamado de la funci�n Dibujar_Objeto.
  
  % Sentencias auxiliares del c�digo
    view(30,30);
    Axis([-5 8 -5 8 -5 8])
    hold on
    pause(0.1)
    hold off
  
end

