clc
clear all
close all
%%inputs

step_angle=1;
angle=10;
velocity=30;
sample_time= (step_angle/(6*velocity))


%full step mode
%in1=[1 1 0 0] %A
in1=[1 0 0 1] %A
in2=~in1      %C
%in3=[ 0 1 1 0] %B
in3=[ 1 1 0 0]
in4=~in3      %D


S=sample_time
pulse_rate=1/sample_time;
F=(angle/step_angle)*sample_time %step time
T=F+10 %Stop time
