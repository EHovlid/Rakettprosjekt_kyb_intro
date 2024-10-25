time = 20;

F_thruster = 111000;
F_side_thruster = 440;
k = 0.29;
g = 9.81;
m = 760;

dt = 4; % Distanse til thrustere
height = 8.15;
radius = 0.22;

J = 1/12*m *(height^2 + 3*radius^2);

W = 10; % Wind
Ka = 10; % Luftmotstand

angle_ref = 0;

Kp = 30000;
Ki = 20000;
Kd = 200000;

out = sim("rocket.slx");
x = out.x.Data;
z = out.z.Data;

%plot(x,z)
%xlabel("X");
%ylabel("Z");