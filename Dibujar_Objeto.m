
%*********************Función: Dibujar_Objeto***********************

% Con esta función es posible dibujar un paralelepípedo de dimensión
% específica. Se dibujan también el sistema coordenado fijo y el 
% sistema coordenado móvil ligado al objeto.

% A la función entra como parámetro de entrada la matriz de transformación
% homogénea, que contiene la respectiva traslación y rotación además de la 
% perspectiva y la escala. También ingresan las dimensiones del objeto.
% El llamado de la función se hace de la siguiente manera:

%      Dibujar_Objeto(M,a,b,h)  // Donde:

%                               M ---> Matríz de transf. honogénea
%                               a ---> Ancho del paralelepípedo
%                               b ---> Largo del paralelepípedo
%                               h ---> Altura del paralelepípedo

% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 23/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------


function Dibujar_Objeto(M,a,b,h)   % Se crea la función.

  % Coordenadas iniciales del objeto en el punto cero
  p1=[-a/2;-b/2;0;1];
  p2=[a/2;-b/2;0;1];
  p3=[a/2;b/2;0;1];
  p4=[-a/2;b/2;0;1];
  p5=[-a/2;-b/2;h;1];
  p6=[a/2;-b/2;h;1];
  p7=[a/2;b/2;h;1];
  p8=[-a/2;b/2;h;1];
  
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
  A1=M;
  t1=3;
  s1='1';
  %-----------------------------------------------------------------

  Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema móvil

  %----------------------------------------------------------------
  % Se multiplican las coordenadas iniciales de los vertices 
  % del paralelepipedo con la matriz de transformación homogenea.
  n1=M*p1;
  n2=M*p2;
  n3=M*p3;
  n4=M*p4;
  n5=M*p5;
  n6=M*p6;
  n7=M*p7;
  n8=M*p8;
  
  %---------------------------------------------------------------
  % Se realiza el llamado de la función Dibujar_Linea con las
  % coordenadas de los vértices del paralelepípedo.
  Dibujar_Linea(n1,n2,[0,0,0],2);
  Dibujar_Linea(n2,n3,[0,0,0],2);
  Dibujar_Linea(n3,n4,[0,0,0],2);
  Dibujar_Linea(n4,n1,[0,0,0],2);
  Dibujar_Linea(n5,n6,[0,0,0],2);
  Dibujar_Linea(n6,n7,[0,0,0],2);
  Dibujar_Linea(n7,n8,[0,0,0],2);
  Dibujar_Linea(n8,n5,[0,0,0],2);
  Dibujar_Linea(n1,n5,[0,0,0],2);
  Dibujar_Linea(n2,n6,[0,0,0],2);
  Dibujar_Linea(n3,n7,[0,0,0],2);
  Dibujar_Linea(n4,n8,[0,0,0],2);
  %---------------------------------------------------------------

end




