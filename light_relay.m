%% Arduino Group Project: Use MATLAB to turn on and off a relay connected to an Arduino
% This code will connect to an Arduino over a Serial Port
% It will ask the user for an H or an L or a q
% H is sent to Arduino over serial (which turns Arduino LED on)
% L is sent to Arduino over serial (which turns Arduino LED off)
% q quits the program

%%
clc, clear, close all

%% Set up serial port and ensure it outputs data
% !!! Check the Port (COM#) the Arduino is connected to using Windows Device Manager !!!
Port = 'COM4';         % Port the Arduino is connected to
delete(instrfindall);  % deletes any connected ports
a = serial(Port); % connect to the Arduino in order to read information 
fopen(a);         % opens the serial port
pause(1);         % pause() for 1 second to make sure a connection is made
out = instrfind('Port',Port); % see if the port you specified is open
disp('Serial Port is Open')

%% Ask User for Input and send input over serial
usr_input = 'm';   % initialize the usr_input variable, so that we enter into the while loop
time_matrix = [];
tracker = [];
timeON = 0;
timeOFF = 0;
while ~strcmp(usr_input,'q')   % keep running the loop until q is typed
usr_input = input('H for on, L for off and q for quit: ','s');
if strcmp(usr_input,'H')           % if H is typed
    %send H over serial
     fprintf(a,'%s',usr_input); %this will send H to the Arduino
     timeON = clock;
end 
if strcmp(usr_input,'L')            % if L is typed
    %send L over serial
    fprintf(a,'%s',usr_input); %this will send H to theaArduino
    timeOFF = clock;
    tracker = timeOFF - timeON;

% Need a Way to track amount of time light is on and off
%Use clock function within Loop to track when the light is on or off
%as of right now this will only track 1 on/off pair

    %important to remember that the clock func prints a 1 by 6 vector of the
    %need a scalar value in hours to fill time matrix
    timeHRS = 8760*tracker(1)+720*tracker(2)+24*tracker(3)+tracker(4)+(1/60)*tracker(5)+(1/3600)*tracker(6);
    time_matrix(end+1) = timeHRS;
    %idea here is to fill a matrix with scalar values in hours which we can
    %later put on a graph after loop is exited
end

end

%% plot the time the light is left on per iteration
% What I mean by iteration is each time the light is cycled on then off.
% The plot will be one that tracks the amount of time in hours the light was on
% inbetween on/off commands. 

iterations = 1:length(time_matrix);

figure(1)
bar(iterations,time_matrix)
xlabel('On/off cycle #')
ylabel('Time light on per iteration(hrs)')
title('Amount of time Light On vs Iteration')

%% Close the serial port
fclose(a);
delete(a)
clear a;
disp('Serial Port is closed')
