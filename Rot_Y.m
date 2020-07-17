%*************************Funci�n: Rot_Y****************************

% Funci�n que calcula la matr�z de rotaci�n R, la cual permite realizar
% un giro de cualquier grado en cualquier sentido alrededor del eje Y.

% La funci�n s�lo pide como par�metro de entrada la magnitud del �ngulo
% para la rotaci�n, y se ejecuta escribiendo:

%       Rot_Y(Ang)  // Donde Ang es la variable que recibe el valor
%                      del �ngulo en radianes.


% Efrain A. Rodriguez Gasca - Ingenier�a Mecatr�nica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matem�ticas
% de Rob�tica I.
%-----------------------------------------------------------------

function R=Rot_Y(Ang)

  R=[cos(Ang),0,sin(Ang);0,1,0;-sin(Ang),0,cos(Ang)];

end
