
%********************Funcion: Dibujar_Linea***********************

% Esta función permite dibujar una linea recta a partir de las
% especificaciones ingresadas por el usuario.

% Para ejecutar la funcion se debe escribir:
%         Dibujar_Linea(Pi,Pf,c,g) // Donde:
%                                  // Pi ---> Punto inicial de la
%                                             linea [Pi1,Pi2,Pi3]
%                                  // Pf ---> Punto final de la
%                                             linea [Pf1,Pf2,Pf3]
%                                  // c  ---> Vector que define el
%                                             color de la linea
%                                  // g  ---> Grosor de la linea

% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------


function Dibujar_Linea(Pi,Pf,c,g) % Se crea la función.

  % Senetencia que dibuja la linea en el espacio.
  plot3([Pi(1),Pf(1)],[Pi(2),Pf(2)],[Pi(3),Pf(3)],'Color',c,'LineWidth',g);
  
  set(gcf,'color','W') % Exterior de la figura en blanco.
  set(gca,'color','W') % Interior de la figura en blanco.
  
  hold on
  
  %grid on              % Enmallado del espacio.
  
end

