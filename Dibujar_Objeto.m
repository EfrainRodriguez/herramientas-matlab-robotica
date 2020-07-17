
%*********************Funci�n: Dibujar_Objeto***********************

% Con esta funci�n es posible dibujar un paralelep�pedo de dimensi�n
% espec�fica. Se dibujan tambi�n el sistema coordenado fijo y el 
% sistema coordenado m�vil ligado al objeto.

% A la funci�n entra como par�metro de entrada la matriz de transformaci�n
% homog�nea, que contiene la respectiva traslaci�n y rotaci�n adem�s de la 
% perspectiva y la escala. Tambi�n ingresan las dimensiones del objeto.
% El llamado de la funci�n se hace de la siguiente manera:

%      Dibujar_Objeto(M,a,b,h)  // Donde:

%                               M ---> Matr�z de transf. honog�nea
%                               a ---> Ancho del paralelep�pedo
%                               b ---> Largo del paralelep�pedo
%                               h ---> Altura del paralelep�pedo

% Efrain A. Rodriguez Gasca - Ingenier�a Mecatr�nica - 23/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matem�ticas
% de Rob�tica I.
%-----------------------------------------------------------------


function Dibujar_Objeto(M,a,b,h)   % Se crea la funci�n.

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
  % Par�metros del sistema coordenado fijo de referencia.
  A0=eye(4);
  t0=3;
  s0='0';
  %-----------------------------------------------------------------

  Dibujar_Sistema_Coordenado(A0,t0,s0);  % Se dibuja el sistema fijo
   
  %-----------------------------------------------------------------
  % Par�metros del sistema m�vil de un objeto que gira alrededor del
  % eje X.
  A1=M;
  t1=3;
  s1='1';
  %-----------------------------------------------------------------

  Dibujar_Sistema_Coordenado(A1,t1,s1); % Se dibuja el sistema m�vil

  %----------------------------------------------------------------
  % Se multiplican las coordenadas iniciales de los vertices 
  % del paralelepipedo con la matriz de transformaci�n homogenea.
  n1=M*p1;
  n2=M*p2;
  n3=M*p3;
  n4=M*p4;
  n5=M*p5;
  n6=M*p6;
  n7=M*p7;
  n8=M*p8;
  
  %---------------------------------------------------------------
  % Se realiza el llamado de la funci�n Dibujar_Linea con las
  % coordenadas de los v�rtices del paralelep�pedo.
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




