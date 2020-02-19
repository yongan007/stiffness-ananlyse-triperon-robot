function [T]=FK_1(Tbase,Ttool,q,t,L,l)

T=Tbase*Tx(l)*Ty(2*l)*Tx(q(1))*Tx(t(1))*Rx(q(2))*Tz(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rx(q(3))*Tz(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rx(q(4))*Ttool;


