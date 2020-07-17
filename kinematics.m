clc, close all
clear all

%% Valores generales
l2=7;
l4=9;
l5=3;

%% Posiciones articulares manuales 5GDL

q=[-pi/4 pi 0 pi/2 0];
% pi=sym('pi');

%% Modelamiento cinemático directo mediante los parámetros de denavit-hartemberg
A00=eye(4);
Robot.A00=eye(4);
Robot.A01=MTH_DH(q(1)+pi/2,0,0,-pi/2);

A12=MTH_DH(q(2),0,l2,0);
A23=MTH_DH(q(3)+pi/2,0,0,pi/2);
A34=MTH_DH(q(4),l4,0,-pi/2);
A45=MTH_DH(q(5)-pi/2,0,l5,0);

Robot.A02=Robot.A01*A12;
Robot.A03=Robot.A02*A23;
Robot.A04=Robot.A03*A34;
Robot.A05=Robot.A04*A45;

%% Dibujo de posicionamiento de robot mediante las MTH
figure(1)
hold on
Dibujar_Sistema_Coordenado(Robot.A00,2,'0');
Dibujar_Sistema_Coordenado(Robot.A01,2,'1');
Dibujar_Sistema_Coordenado(Robot.A02,2,'2');
Dibujar_Sistema_Coordenado(Robot.A03,2,'3');
Dibujar_Sistema_Coordenado(Robot.A04,2,'4');
Dibujar_Sistema_Coordenado(Robot.A05,2,'5');
Dibujar_Linea(Robot.A01(1:3,4),Robot.A02(1:3,4),[0 0 0],5);
Dibujar_Linea(Robot.A02(1:3,4),Robot.A03(1:3,4),[0 0 0],5);
Dibujar_Linea(Robot.A03(1:3,4),Robot.A04(1:3,4),[0 0 0],5);
Dibujar_Linea(Robot.A04(1:3,4),Robot.A05(1:3,4),[0 0 0],5);

axis([-20 20 -20 20 -20 20])
view(120,20)

%% Modelamiento cinemático inverso del robot mediante el método analítico

A05=Robot.A05;
p5=A05(1:3,4);
x5=A05(1:3,1);
pm=p5-l5*x5;
qn(1)=atan2(-pm(1),pm(2));                 % Valor articulación 1

codo=1;                                   % Valor Codo -1(abajo) 1(arriba)
R=sqrt(pm(1)^2+pm(2)^2);
M=sqrt(pm(3)^2+R^2);
cq3=(M^2-l2^2-l4^2)/(2*l2*l4);
sq3=codo*sqrt(1-cq3^2);
qn(3)=atan2(sq3,cq3);                      % Valor articulación 3

alpha=atan2(l4*sin(qn(3)),l2+l4*cos(qn(3)));
beta=atan2(pm(3),R);
qn(2)=-(beta+alpha);                         % Valor articulación 2

A01=MTH_DH(qn(1)+pi/2,0,0,-pi/2);
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

%% Dibujo de posicionamiento de robot mediante las MTH
figure(2)
hold on
Dibujar_Sistema_Coordenado(A00,2,'0');
Dibujar_Sistema_Coordenado(A01,2,'1');
Dibujar_Sistema_Coordenado(A02,2,'2');
Dibujar_Sistema_Coordenado(A03,2,'3');
Dibujar_Sistema_Coordenado(A04,2,'4');
Dibujar_Sistema_Coordenado(A05,2,'5');
Dibujar_Linea(A01(1:3,4),A02(1:3,4),[0 0 0],5);
Dibujar_Linea(A02(1:3,4),A03(1:3,4),[0 0 0],5);
Dibujar_Linea(A03(1:3,4),A04(1:3,4),[0 0 0],5);
Dibujar_Linea(A04(1:3,4),A05(1:3,4),[0 0 0],5);

axis([-20 20 -20 20 -20 20])
view(120,20)