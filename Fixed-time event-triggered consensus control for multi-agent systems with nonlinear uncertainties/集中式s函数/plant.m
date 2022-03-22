function [sys,x0,str,ts]=plant(t,x,u,flag)
switch flag
case 0
    [sys,x0,str,ts]=mdlInitializeSizes;
case 1
    sys=mdlDerivatives(t,x,u);
case 3
    sys=mdlOutputs(t,x,u);
case {2, 4, 9 }
    sys = [];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 5;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 5;
sizes.NumInputs      = 5;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;
sys=simsizes(sizes);
x0=[-3 -2 0 2 4];
str=[];
ts=[0 0];
function sys=mdlDerivatives(t,x,u)

dotx1=u(1);
dotx2=u(2);
dotx3=u(3);
dotx4=u(4);
dotx5=u(5);

% dotx1=u(1)+0.2*x(1)+0.1*cos(t);
% dotx2=u(2)+0.2*x(2)+0.1*cos(t);
% dotx3=u(3)+0.2*x(3)+0.1*cos(t);
% dotx4=u(4)+0.2*x(4)+0.1*cos(t);
% dotx5=u(5)+0.2*x(5)+0.1*cos(t);

sys(1)=dotx1;
sys(2)=dotx2;
sys(3)=dotx3;
sys(4)=dotx4;
sys(5)=dotx5;

function sys=mdlOutputs(t,x,u)

sys(1)=x(1);
sys(2)=x(2);
sys(3)=x(3);
sys(4)=x(4);
sys(5)=x(5);








