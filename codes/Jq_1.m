function [ Jq ] = Jq_1(Tbase,Ttool,q,t,L,l)

T0 = FK_1(Tbase,Ttool,q,t,L,l);
T0(1:3,4) = [0;0;0];
T0 = T0';

Td=Tbase*Tx(l)*Ty(l)*Txd(q(1))*Tx(t(1))*Rx(q(2))*Tz(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rx(q(3))*Tz(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rx(q(4))*Ttool*T0;
    

J1 = [Td(1,4), Td(2,4), Td(3,4), Td(3,2), Td(1,3), Td(2,1)]' ;

Td=Tbase*Tx(l)*Ty(l)*Tx(q(1))*Tx(t(1))*Rxd(q(2))*Tz(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rx(q(3))*Tz(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rx(q(4))*Ttool*T0;

J2 = [Td(1,4), Td(2,4), Td(3,4), Td(3,2), Td(1,3), Td(2,1)]' ;

Td=Tbase*Tx(l)*Ty(l)*Tx(q(1))*Tx(t(1))*Rx(q(2))*Tz(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rxd(q(3))*Tz(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rx(q(4))*Ttool*T0;

J3 = [Td(1,4), Td(2,4), Td(3,4), Td(3,2), Td(1,3), Td(2,1)]' ;

Td=Tbase*Tx(l)*Ty(l)*Tx(q(1))*Tx(t(1))*Rx(q(2))*Tz(L)*Tx(t(2))*Ty(t(3))*Tz(t(4))...
    *Rx(t(5))*Ry(t(6))*Rz(t(7))*Rx(q(3))*Tz(L)*Tx(t(8))*Ty(t(9))*Tz(t(10))...
    *Rx(t(11))*Ry(t(12))*Rz(t(13))*Rxd(q(4))*Ttool*T0;

J4 = [Td(1,4), Td(2,4), Td(3,4), Td(3,2), Td(1,3), Td(2,1)]' ;

Jq = [J1, J2, J3, J4];

end
