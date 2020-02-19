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


x = -100:10:100;
y = -100:10:100;
z= -100:10:100;
F = [100 0 0 0 0 0];

z1 = zeros(length(x),length(y),length(z));

for i = 1:length(x)
%     disp(i/length(x)*100)
    for j = 1:length(y)
        for k = 1:length(z)
        % Calc robot stiffnes matrix
        [K] =VJM_lin_total(x(i)/1000, y(j)/1000,z(k)/1000);
        % Get deflections for all configurations
        dt=F*K;
        dr=sqrt(dt(1)^2+dt(2)^2+dt(3)^2);
        z1(i,j,k) = dr;
        end
    end    
end

% Draw plot   
% c1 = (z1>7e-4)';
% c2 = (z2>7e-4)';
% c3 = (z3>7e-4)';
% c4 = (z4>7e-4)';
% figure ND array is not defined. Use PERMUTE instead.

% HOWTO(0.1,0.2,0.1);
% figure()


% x = z1(:,1);
% y= z1(:,2);
% z=z1(:,3);
% scatter3(x,y,z1)
%figure()
% contourf(X,Y,def);
figure()

for kk=1: length(z1)
%     img = peaks(128);
%     contour(img,128)
    [M,c]=contour3(z1(:,:,kk));
    c.LineWidth=1;
%     daspect([1 1 1])
    %colormap(hot)%     caxis([-10 10 10])
    colormap summer
    colorbar
    hold on
end
% subplot(2,2,1)
% contour3(z1(1),z1(2),z1(3))
% contourf(z1',[0.000001 0.000001 0.0001 0.001 0.01 0.1])
% subplot(2,2,2)
% figure()
% contourf(z2',[0.000001 0.000001 0.0001 0.001 0.01 0.1])
% % subplot(2,2,3)
% figure()
% contourf(z3',[0.000001 0.000001 0.0001 0.001 0.01 0.1])
% % subplot(2,2,4)
% figure()
% contourf(z4',[0.000001 0.000001 0.0001 0.001 0.01 0.1])


