clc;
clear all;
close all;

%%inputs
step_mode=0; % 1=full step; 0=half step
RPM = 100 %RPM from 1 to 100
if (step_mode==1)
    f = (6*RPM)/1.8
else
    f = (6*RPM)/0.9
end

S= 1/f

if (step_mode==1)
    %full step mode
    in1=[1 0 0 1] %A+
    in2=[0 1 1 0] %A-
    in3=[1 1 0 0] %B+
    in4=[0 0 1 1] %B-
else
    %half step mode
    in1=[1 1 0 0 0 0 0 1]; %A+
    in3=[0 1 1 1 0 0 0 0]; %B+
    in2=[0 0 0 1 1 1 0 0]; %A-
    in4=[0 0 0 0 0 1 1 1]; %B-
end

