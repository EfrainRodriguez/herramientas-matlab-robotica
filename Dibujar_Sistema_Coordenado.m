
%***************Funcion: Dibujar_Sistema_Coordenado***************

% Con la ejecución de esta función es posible situar un sistema 
% coordenado en cualquier parte del espacio según los parñametros 
% especificados por el usuario.

% Es posible llamar la función de la suiguiente manera:

%         Dibujar_Sistema_Coordenado(A,t,s) 

% Donde:
%         A ---> Matríz de transformación homogénea.
%         t ---> Longitud de cada eje coordenado.
%         s ---> Subíndice de la etiqueta de los ejes.

% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------


function Dibujar_Sistema_Coordenado(A,t,s)

  % Vectores dimencional de los ejes coordenados.
  t1=[t;0;0;1];    % Eje X             
  t2=[0;t;0;1];    % Eje Y
  t3=[0;0;t;1];    % Eje Z  
  
  % Coordenadas de para cada eje del sistema móvil.
  P1=A*t1; P2=A*t2; P3=A*t3;   
  
  Pi=[A(1,4),A(2,4),A(3,4)];   % Origen del sistema móvil.
  
  %---------------------------------------------------------------
  
  % Se dibuja el sistema coordenado fijo o de referencia.
  %Dibujar_Linea([0,0,0],[t,0,0],[0 0 1],2);
  %text(t,0,0,['X']);
  %Dibujar_Linea([0,0,0],[0,t,0],[1 0 0],2);
  %text(0,t,0,['Y']);
  %Dibujar_Linea([0,0,0],[0,0,t],[0 1 0],2);
  %text(0,0,t,['Z']);
  
  %----------------------------------------------------------------
  
  % Se dibuja el sistema coordenado móvil.
  Dibujar_Linea(Pi,P1,[0 0 1],2);
  hold on
  text(P1(1),P1(2),P1(3),strcat('X',s));
  Dibujar_Linea(Pi,P2,[1 0 0],2);
  hold on
  text(P2(1),P2(2),P2(3),strcat('Y',s));
  Dibujar_Linea(Pi,P3,[0 1 0],2);
  hold on
  text(P3(1),P3(2),P3(3),strcat('Z',s));
  
  %----------------------------------------------------------------
  
  grid on          % Enmallado del espacio.

end














