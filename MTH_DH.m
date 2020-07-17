
%*************************** Funcion: MTH_DH ******************************

% La funci�n A = MTH_DH(theta,d,a,alpha) retorna la matr�z de

% transformaci�n homog�nea (4 x 4) a partir de los par�metros de
% Denavit-Hartenberg (theta,d,a,alpha).

% Efrain A. Rodriguez G?asca - Ingenier�a Mecatr�nica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matem�ticas
% de Rob�tica I.
%-----------------------------------------------------------------

function A = MTH_DH(theta,d,a,alpha)   % Creaci�n de la funci�n.

% Evaluaci�n del n�mero de par�metros.
if nargin == 4     
    % Creaci�n de la matr�z de Denavit-Hartenberg.
    A=[cos(theta), -cos(alpha)*sin(theta),  sin(alpha)*sin(theta), a*cos(theta);...
       sin(theta),  cos(alpha)*cos(theta), -sin(alpha)*cos(theta), a*sin(theta);...
                0,             sin(alpha),             cos(alpha),            d;...
                0,                      0,                      0,            1];
else
    % Mensaje de error.
    disp('\n')
    error('Denavit: << N�mero errado de argumentos >>')
end

end