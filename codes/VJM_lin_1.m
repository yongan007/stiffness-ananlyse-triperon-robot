% Author: Popov Dmitry & Dmitrienko Margarita
% Innopolis University
% Advanced Robotic Manipulation
% Homework 4
%
% Calculate robot stiffness matrix for 1st serial chain
%
% Using:
% [Kc] = VJM_lin_1(Tbase,Ttool,q0,q,t,L,l,d);
% Input: Tbase Ttool - transformations matrix of base and tool
%        q0 - active joint angle
%        q  - passive joint angle
%        t - virtual joint angle
%        L,l,d - robot parameters
% Output: Kc - 6*6 stiffness matrix

function [Kc] = VJM_lin_1(Tbase,Ttool,q,t,L,l)


k0 = 1e6; % Actuator stif
%material and shape parameters
E = 70e9; %Young's modulus
G = 25.5e9; %shear modulus
d = 50e-3;

%for cylinder
S = pi*d^2/4;
Iy = pi*d^4/64;
Iz = pi*d^4/64;


k1 = k_cylinder(E, G, d, L, S, Iy, Iz);
k2 = k_cylinder(E, G, d, l, S, Iy, Iz);

% K theta matrix
Kt = [k0 zeros(1,12)
    zeros(6,1) k1 zeros(6,6)
    zeros(6,1) zeros(6,6) k2];


Jq=Jq_1(Tbase,Ttool,q,t,L,l);
Jt=Jt_1(Tbase,Ttool,q,t,L,l);

% Numerical solution
% SM=inv([Jt*inv(Kt)*Jt' Jq;  Jq' zeros(1,1)]);
% Kc=SM(1:6,1:6);

% Analytical solution
Kc0=inv(Jt*inv(Kt)*Jt');
% Kcq = inv(Jq'*inv(Kc0)*Jq)*Jq'*inv(Kc0);
% Kc = Kc0-Kc0*Jq*Kcq;

Kc = Kc0 - Kc0*Jq*inv(Jq'*Kc0*Jq)*Jq'*Kc0;
end