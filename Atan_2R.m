
%*************************Función: Atan_2R****************************

% Esta función cumple el mismo objetivo de la función atan2(y,x) de la 
% biblioteca de Matlab, el cual es calcular el valor de el angulo 
% comprendido entre un vector y la axisa horizontal a partir de sus 
% componenetes horizontal y vertical.
% Se pretende entonces crear un algoritmo que imite la función atan2(y,x)
% teniendo en cuenta que el ángulo retornado siempre es positivo ya que 
% se mide en sentido opuesto a las manecillas del reloj y el punto 0 de
% referencia se encuentra a la derecha del plano cartesiano sobre el eje x.

% La función requiere como parámetros de entrada el valor del cateto
% opuesto (y) al ángulo y el valor del cateto adyacente (X) al ángulo, con
% los respectivos signos que indican la dirección del vector y lo localizan
% en el cuadrante adecuado para el correcto trabajo de la función.

%       Atan_2R(Y,X,'L')  // Donde:
%                              >> Y ---> cateto opuesto.
%                              >> X ---> cateto adyacente.
%                              >> L ---> 'R' angulo en radianes o
%                                        'G' angulo en grados.


% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 04/05/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------

function ang = Atan_2R(Y,X,L)

  if X==0
      if Y==0
          ang=['error de argumentos'];
      else if Y>0
              ang=pi/2;
          else
              ang=3*pi/2;
          end
      end
  else if X>0
          if Y>=0
              ang=atan(Y/X);
          else
              ang=atan(Y/X)+(2*pi);
          end
      else if X<0
              if Y>=0
                  ang=atan(Y/X)+pi;
              else
                  ang=atan(Y/X)+pi;
              end
          end
      end
  end
  if L == 'G' || L == 'g' 
      ang=ang*180/pi;
  else if L == 'R' || L == 'r'
          ang=ang;
      else
          ang=['error de argumentos'];
      end
  end
end







