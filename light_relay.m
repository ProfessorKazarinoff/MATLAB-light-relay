%% Matlab Code –
%% Problem statement:
% Ask the user for an angle and a magnitude
% Ensure the angle is between 0 and 90
% Ensure the magnitude is between 0 and 100
% Print to the command line the x and y components of a force with the
% specified magnitude and angle
%% Ask the user for an angle
% Ensure the angle is between 0 and 90 degress
angle = 100 % initialize the angle variable so that we
while (angle<0 | angle >90)
angle = input('Enter an angle between 0 and 90: ')
end
%% Ask the user for a magnitude
% Ensure the magnitude is between 0 and 100
mag = 200 % initialize the mag so that we enter the while loop
while (mag<0 | mag>100)
mag = input('Enter a magnitude between 0 and 100: ')
end
%% Calculate the x and y components of the vector
[x_component y_component ] = angle_mag_to_vect (angle,mag)
%% Print to the command line the x and y components
x_component = both_components(1)
y_component = both_components(2)
fprintf('\n The x-component is: %4.2f , The y-component is: %4.2f',x_component, y_component)
disp(['The x-component is: ',num2str(x_component), 'The y-component is: ',
num2str(y_component)])
