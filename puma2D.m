
function [x,y] = puma2D(theta1,d,theta3)

l1 = 25;
l3 = 15;

d = d + l1;

Ax = l1 * cos(theta1);
Ay = l1 * sin(theta1);

plot([0,Ax],[0,Ay])
%hold on
h = sqrt(l1^2 + d^2);

beta = asin(d/h);
alpha = theta1 - beta;

Bx = h * cos(alpha);
By = h * sin(alpha);

plot([Ax,Bx],[Ay,By])
%hold on

phi = asin((By - Ay)/d);

x = Bx + l3 * cos(phi + theta3);
y = By + l3 * sin(phi + theta3);

plot([Bx,x],[By,y])
%hold on

axis([-50 100 -50 120])
hold on
