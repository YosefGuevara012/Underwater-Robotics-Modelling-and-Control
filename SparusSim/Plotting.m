%% here you can implement the code in order to have some figures ...
%%
close all
figure(1)
hold on
grid on
PosE_M2 = PosE_M(:,1:3)
t = 0:0.01:10
plot(t,PosE_M2)

title('Measured Position vs time')
xlabel('Time in (s)') 
ylabel('Position in [m]') 
legend({'surge','sway', 'heave'},'Location','southwest')

figure(2)
hold on
grid on
PosE_M2 = PosE_S(:,1:3)
t = 0:0.01:10
plot(t,PosE_M2)

title('Simulated Position vs time')
xlabel('Time in (s)') 
ylabel('Position in [m]') 
legend({'surge','sway', 'heave'},'Location','northwest')

figure(3)
hold on
grid on
PosE_M2 = PosE_M(:,4:6)
t = 0:0.01:10
plot(t,PosE_M2)

title('Measured Oritation vs time')
xlabel('Time in (s)') 
ylabel('Oritation in deg') 
legend({'roll','pitch', 'yaw'},'Location','northwest')

figure(4)
hold on
grid on
PosE_M2 = PosE_S(:,4:6)
t = 0:0.01:10
plot(t,PosE_M2)

title('Simulated Oritation vs time')
xlabel('Time in (s)') 
ylabel('Oritation in rad') 
legend({'roll','pitch', 'yaw'},'Location','northwest')

figure(5)
hold on
grid on
PosE_M2 = VitB_S(:,1:3)
t = 0:0.01:10
plot(t,PosE_M2)

title('Simulated Linear velocity vs time')
xlabel('Time in (s)') 
ylabel('Velocity m/s') 
legend({'surge','sway', 'heave'},'Location','southwest')

figure(6)
hold on
grid on
PosE_M2 = VitB_S(:,4:6)
t = 0:0.01:10
plot(t,PosE_M2)

title('Simulated angular velocity vs time')
xlabel('Time in (s)') 
ylabel('Angular Velocity rad/s') 
legend({'roll','pitch', 'yaw'},'Location','northeast')


figure(7)
hold on
grid on
PosE_M2 = Thrust_S
t = 0:0.01:10
plot(t,PosE_M2)

title('Simulated Thruster forces vs time')
ylabel('Thruster forces(N)') 
xlabel('Time(s)') 
legend({'Vertical thruster ','Right thruster', 'Left thruster'},'Location','southwest')



figure(8)

x = PosE_S(:,1);
y = PosE_S(:,2);
z = PosE_S(:,3);
plot3(x,y,-z)

figure(9)


t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)