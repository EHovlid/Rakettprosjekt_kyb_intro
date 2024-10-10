time = 120;

F_thruster = 111000;
F_side_thruster = 440;
k = 0.02;
g = 9.81;
m = 760;

distance_to_thrusters = 4;
J = 1;
W = 0;
angle_ref = 1;

Kp = 1;
Ki = 0;
Kd = 0;

xKp = 5;
x_ref = 0;

out = sim("rocket.slx");
x = out.x.Data;
z = out.z.Data;

plot(x,z)
xlabel("X");
ylabel("Z");