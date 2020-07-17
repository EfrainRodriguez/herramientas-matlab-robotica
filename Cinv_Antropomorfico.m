
%********************** Funcion: Cinv_Antropomorfico **********************

% Esta función requiere como parámetros de entrada la matríz de
% transformación homogénea del efector final con respecto al origen (HOME).
% Esto, para poder calcular la posición y orientación en 
% la que se debe encontrar cada articulación del robot con respecto al
% sistema de referencia.

%    .
%    .
%    .



% Efrain A. Rodriguez Gasca - Ingeniería Mecatrónica - 17/03/2014
%                   Universidad de Pamplona.

%--------------------------------------------------------------------------
% Programa perteneciente al paquete de Herramientas Matemáticas
% de Robótica I.
%--------------------------------------------------------------------------

function robot = Cinv_Antropomorfico(A05,CODO,A00)

if nargin<4
    A00=eye(4);
end

l1=5.5; l2=12.6; l4=17.5; l5=13;

p5=A05(1:3,4);
x5=A05(1:3,1);
pm=p5-l5*x5;
qn(1)=atan2(-pm(1),pm(2));                 % Valor articulación 1

% codo=1;                                   % Valor Codo -1(abajo) 1(arriba)
R=sqrt(pm(1)^2+pm(2)^2);
M=sqrt((pm(3)-l1)^2+R^2);
cq3=(M^2-l2^2-l4^2)/(2*l2*l4);
sq3=CODO*sqrt(1-cq3^2);
qn(3)=atan2(sq3,cq3);                      % Valor articulación 3

betta=atan2(l4*sin(qn(3)),l2+l4*cos(qn(3)));
alpha=atan2((pm(3)-l1),R);
qn(2)=alpha-betta;                         % Valor articulación 2

A01=MTH_DH(qn(1)+pi/2,l1,0,pi/2);
A12=MTH_DH(qn(2),0,l2,0);
A23=MTH_DH(qn(3)+pi/2,0,0,pi/2);
A02=A01*A12;
A03=A02*A23;
x3=A03(1:3,1);
y3=A03(1:3,2);
z5=A05(1:3,3);
z4=z5;
qn(4)=atan2(-dot(z4,x3),dot(z4,y3));
                                           % Valor articulación 4

A34=MTH_DH(qn(4),l4,0,-pi/2);
A04=A03*A34;
x4=A04(1:3,1);
y4=A04(1:3,2);
x5=A05(1:3,1);
qn(5)=atan2(dot(x5,x4),-dot(x5,y4));
                                           % Valor articulación 5

A45=MTH_DH(qn(5)-pi/2,0,l5,0);
A05=A04*A45;

robot.qn=qn*180/pi;
robot.A00=A00;
robot.A01=A01;
robot.A02=A02;
robot.A03=A03;
robot.A04=A04;
robot.A05=A05;

%% Dibujo de posicionamiento de robot mediante las MTH
figure(1)
hold on
Dibujar_Sistema_Coordenado(robot.A00,2,'0');
Dibujar_Sistema_Coordenado(robot.A01,2,'1');
Dibujar_Sistema_Coordenado(robot.A02,2,'2');
% Dibujar_Sistema_Coordenado(robot.A03,2,'3');
Dibujar_Sistema_Coordenado(robot.A04,2,'4');
Dibujar_Sistema_Coordenado(robot.A05,2,'5');
Dibujar_Linea(robot.A00(1:3,4),robot.A01(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A01(1:3,4),robot.A02(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A02(1:3,4),robot.A03(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A03(1:3,4),robot.A04(1:3,4),[0 0 0],5);
Dibujar_Linea(robot.A04(1:3,4),robot.A05(1:3,4),[0 0 0],5);

axis([-20 20 -20 20 -20 20])
view(120,20)

end