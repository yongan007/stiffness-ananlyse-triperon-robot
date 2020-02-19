function [T]=FK_3(Tbase,Ttool,q,t,L,l)

T=Tbase*Tz(q(9))*Tz(t(1))*Rz(q(10))*Tx(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rz(q(11))*Tx(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rz(q(12))*Ttool;


