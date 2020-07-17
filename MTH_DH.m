
%*************************** Funcion: MTH_DH ******************************

% La función A = MTH_DH(theta,d,a,alpha) retorna la matríz de

% transformación homogénea (4 x 4) a partir de los parámetros de
% Denavit-Hartenberg (theta,d,a,alpha).

% Efrain A. Rodriguez G?asca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------

function A = MTH_DH(theta,d,a,alpha)   % Creación de la función.

% Evaluación del número de parámetros.
if nargin == 4     
    % Creación de la matríz de Denavit-Hartenberg.
    A=[cos(theta), -cos(alpha)*sin(theta),  sin(alpha)*sin(theta), a*cos(theta);...
       sin(theta),  cos(alpha)*cos(theta), -sin(alpha)*cos(theta), a*sin(theta);...
                0,             sin(alpha),             cos(alpha),            d;...
                0,                      0,                      0,            1];
else
    % Mensaje de error.
    disp('\n')
    error('Denavit: << Número errado de argumentos >>')
end

end