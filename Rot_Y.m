%*************************Función: Rot_Y****************************

% Función que calcula la matríz de rotación R, la cual permite realizar
% un giro de cualquier grado en cualquier sentido alrededor del eje Y.

% La función sólo pide como parámetro de entrada la magnitud del ángulo
% para la rotación, y se ejecuta escribiendo:

%       Rot_Y(Ang)  // Donde Ang es la variable que recibe el valor
%                      del ángulo en radianes.


% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------

function R=Rot_Y(Ang)

  R=[cos(Ang),0,sin(Ang);0,1,0;-sin(Ang),0,cos(Ang)];

end
