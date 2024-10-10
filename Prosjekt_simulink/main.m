time = 1200;

F_thruster = 111000;
F_side_thruster = 440;
k = 0.02;
g = 9.81;
m = 760;

dt = 4;% Distanse til thrustere
ds = -1; % Distanse til sentrum
height = 8.15;
radius = 0.22;
J = 1/12*m *(height^2 + 3*radius^2);
W = 1;
angle_ref = 0;

Kp = 100;
Ki = 0;
Kd = 0;

out = sim("rocket.slx");
x = out.x.Data;
z = out.z.Data;

plot(x,z)
xlabel("X");
ylabel("Z");