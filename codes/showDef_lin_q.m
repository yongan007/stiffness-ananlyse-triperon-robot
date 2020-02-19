% Author: Popov Dmitry & Dmitrienko Margarita
% Innopolis University
% Advanced Robotic Manipulation
% Homework 4
%
% Calculate robot end-effector displacement
%
% Using:
% showDef_lin(F);
% Input: F - force vector (Fx,Fy,Fz,Mx,My,Mz) example: F = [100;00;0;0;0;0];
% Output: none 

function showDef_lin_q(x,y)

clear all
L=300e-3;
l=100e-3;
d=300e-3;

% temp = HOWTO(0.1,0.25,true);
temp = HOWTO(0,0.17,true);
Tbase = eye(4);
Ttool = eye(4);
t = zeros(1,13)

end