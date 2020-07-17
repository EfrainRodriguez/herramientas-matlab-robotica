
%*************************Función: Rot_X****************************

% Función que calcula la matríz de rotación R, la cual permite realizar
% un giro de cualquier grado en cualquier sentido alrededor del eje X.

% La función sólo pide como parámetro de entrada la magnitud del ángulo
% para la rotación, y se ejecuta escribiendo:

%       Rot_X(Ang)  // Donde Ang es la variable que recibe el valor
%                      del ángulo en radianes.


% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------

function R=Rot_X(Ang)

  R=[1 0 0;0 cos(Ang) -sin(Ang);0 sin(Ang) cos(Ang)];

end

