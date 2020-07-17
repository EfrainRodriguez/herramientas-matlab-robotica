
%********************** Funcion: Cinematica_Directa ***********************

% Para i de 1 a n, siendo n el número de articulaciones del robot que se
% está analizando, ésta función retorna la matríz de transformación del
% sistema i con respecto al sistema i-1, dada una matríz como parámetro de
% entrada con los datos la tabla de Denavit-Hartenberg.




% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%-----------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%-----------------------------------------------------------------

function robot = Cinematica_Directa(q,A00)   % Se crea la función.

if nargin<2
    A00=eye(4);
end

q=q*pi/180;

l1=5.5; l2=12.6; l4=17.5; l5=13;

robot.A00=A00;
robot.A01=A00*MTH_DH(q(1)+pi/2,l1,0,pi/2);


A12=MTH_DH(q(2),0,l2,0);
A23=MTH_DH(q(3)+pi/2,0,0,pi/2);
A34=MTH_DH(q(4),l4,0,-pi/2);
A45=MTH_DH(q(5)-pi/2,0,l5,0);

robot.A02=robot.A01*A12;
robot.A03=robot.A02*A23;
robot.A04=robot.A03*A34;
robot.A05=robot.A04*A45

%% Dibujo de posicionamiento de robot mediante las MTH
figure(1)
 hold on
Dibujar_Sistema_Coordenado(robot.A00,2,'0');
Dibujar_Sistema_Coordenado(robot.A01,2,'1');
Dibujar_Sistema_Coordenado(robot.A02,2,'2');
Dibujar_Sistema_Coordenado(robot.A03,2,'3');
Dibujar_Sistema_Coordenado(robot.A04,2,'4');
Dibujar_Sistema_Coordenado(robot.A05,2,'5');

Dibujar_Linea(robot.A00(1:3,4),robot.A01(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A01(1:3,4),robot.A02(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A02(1:3,4),robot.A03(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A03(1:3,4),robot.A04(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A04(1:3,4),robot.A05(1:3,4),[0 0 0],5);

axis([-20 20 -10 35 -10 30])
view(120,20)


end