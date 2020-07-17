
  %R=Rot_X(Ang(i));              % Llamado de la función Rot_X.
  R=eye(3);
  P=[10;0;0];                    % Vector traslación.
  M1=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  
%   Dibujar_Objeto(M1,4,8,2);   % Llamado de la función Dibujar_Objeto.
%   
%   % Sentencias auxiliares del código
%     view(120,30);
%     axis([-15 18 -15 18 -15 18])
%     hold on
%    
  
  %R=Rot_X(Ang(i));              % Llamado de la función Rot_X.
  R=eye(3);
  P=[0;10;0];                    % Vector traslación.
  M2=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  
%   Dibujar_Objeto(M2,4,8,2);   % Llamado de la función Dibujar_Objeto.
%   
%   % Sentencias auxiliares del código
%     view(120,30);
%     axis([-15 18 -15 18 -15 18])
%     hold on
    
%R=Rot_X(Ang(i));              % Llamado de la función Rot_X.
  R=eye(3);
  P=[0;10;0];                    % Vector traslación.
  M25=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  
%   Dibujar_Objeto(M2,4,8,2);   % Llamado de la función Dibujar_Objeto.
%   
%   % Sentencias auxiliares del código
%     view(120,30);
%     axis([-15 18 -15 18 -15 18])
%     hold on
 
  R=Rot_Z(pi/2);              % Llamado de la función Rot_X.
  
  P=[0;0;0];                    % Vector traslación.
  M3=[R,P;0,0,0,1];             % Matríz de transformación homogénea.
  
%   Dibujar_Objeto(M3,4,8,2);   % Llamado de la función Dibujar_Objeto.
%   
%   % Sentencias auxiliares del código
%     view(120,30);
%     axis([-15 18 -15 18 -15 18])
%     hold on
R=Rot_Y(pi/2);              % Llamado de la función Rot_X.
  
  P=[0;0;0];                    % Vector traslación.
  M4=[R,P;0,0,0,1]; 


    
Dibujar_Objeto(M4*M3*M1,4,8,2);   % Llamado de la función Dibujar_Objeto.
  M4*M3*M1
  % Sentencias auxiliares del código
    view(120,30);
    axis([-15 18 -15 18 -15 18])
    hold on