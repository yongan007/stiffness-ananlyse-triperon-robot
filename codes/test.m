 close all
 clear all
F = [100;0;0;0;0;0];

x=0.0;
y=0.20;
z=0.1;
L=300e-3;
l=100e-3;
d=300e-3;

temp = HOWTO(x,y,z);
Tbase = eye(4);
Ttool = eye(4);
t = zeros(1,13);


% q0 = [-temp(1,2) -temp(1,1)];
% q2 = temp(1,3)-temp(1,1);
% q1 = temp(1,4)-temp(1,2);
% q3 = pi*3 - temp(1,1) - temp(1,2) - q1- q2;
% q = [-q1 -q2 q3];
% 
% if  isreal(temp(1,1))&&isreal(temp(1,2))&&isreal(temp(1,3))&&isreal(temp(1,4))...
%                 &&isfinite(temp(1,1))&&isfinite(temp(1,2))&&isfinite(temp(1,3))&&isfinite(temp(1,4))
%     K1=inv(VJM_nonlin_1(Tbase,Ttool,q0,q,t,L,l,d,F) + VJM_nonlin_2(Tbase,Ttool,q0,q,t,L,l,d,F));
% else
%     K1=0;
% end
% K1
% K1*F

