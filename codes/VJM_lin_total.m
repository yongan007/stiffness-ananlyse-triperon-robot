% Author: Popov Dmitry & Dmitrienko Margarita
% Innopolis University
% Advanced Robotic Manipulation
% Homework 4
%
% Calculate robot stiffness matrix in current position 
% for all configurations
%
% Using:
% [K1,K2,K3,K4] = VJM_lin_total(x,y)
% Input: x,y end-effector position
% Output: K1,K2,K3,K4 - 6*6 compliance matrix for each configuration

function [K] = VJM_lin_total(x,y,z)

% robot params
L=1;
l=1;

% d=300e-3;

% get angles with IK
q = HOWTO(x,y,z);
Tbase = eye(4);
Ttool = eye(4);
t = 0.001*zeros(1,13);

if isreal(q(1)) && isreal(q(2)) && isreal(q(3)) && isreal(q(4)) && isreal(q(5)) && isreal(q(6)) && isreal(q(7)) && isreal(q(8)) && isreal(q(9))...
        && isreal(q(10)) && isreal(q(11)) && isreal(q(12))...
        && isfinite(q(1)) && isfinite(q(2)) && isfinite(q(3)) && isfinite(q(4))...
        && isfinite(q(5)) && isfinite(q(6)) && isfinite(q(7)) && isfinite(q(8)) && isfinite(q(9)) && isfinite(q(10))...
        && isfinite(q(11)) && isfinite(q(12))
    K=pinv(VJM_lin_3(Tbase,Ttool,q,t,L,l))+pinv(VJM_lin_1(Tbase,Ttool,q,t,L,l))+ pinv(VJM_lin_2(Tbase,Ttool,q,t,L,l))
%     K=pinv(VJM_lin_1(Tbase,Ttool,q,t,L,l));
else
    K= 0;
end

% 
% q0 = [-temp(4,2) -temp(4,1)];

end