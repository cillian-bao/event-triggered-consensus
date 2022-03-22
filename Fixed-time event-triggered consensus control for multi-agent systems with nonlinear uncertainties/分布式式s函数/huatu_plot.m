close all;

figure(1);
plot(t,y);
legend('x1','x2','x3','x4','x5','linewidth',1.5);
xlabel('time(s)');ylabel('Position of agents');


figure(2)
plot(t,ut1,'linewidth',1.5)
legend('u1','u2','u3','u4','u5')

figure(3)
plot(t,z(:,1),t,z(:,2))
xlabel('time(s)');ylabel('||e1||');
legend('||e1||','0.6||y1||')

figure(4)
plot(t,z1(:,1),t,z1(:,2))
xlabel('time(s)');ylabel('||e1||');
legend('||e2||','0.6||y2||')

figure(5)
plot(t,z2(:,1),t,z2(:,2))
xlabel('time(s)');ylabel('||e||');
legend('||e3||','0.6||y3||')

figure(6)
plot(t,z3(:,1),t,z3(:,2))
xlabel('time(s)');ylabel('||e||');
legend('||e4||','0.6||y4||')

figure(7)
plot(t,z4(:,1),t,z4(:,2))
xlabel('time(s)');ylabel('||e||');
legend('||e5||','0.6||y5||')


n=size(ut1,1);
T_1=[];T_2=[];T_3=[];T_4=[];T_5=[];
for i=1:n-1
    if (ut1(i,1)~= ut1(i+1,1))
        t1=i;
        T_1=[T_1;t1];
    end
end
for i=1:n-1
    if (ut1(i,2)~=ut1(i+1,2))
        t1=i;
        T_2=[T_2;t1];
    end
end
for i=1:n-1
    if (ut1(i,3)~=ut1(i+1,3))
        t1=i;
        T_3=[T_3;t1];
    end
end
for i=1:n-1
    if (ut1(i,4)~=ut1(i+1,4))
        t1=i;
        T_4=[T_4;t1];
    end
end
for i=1:n-1
    if (ut1(i,5)~=ut1(i+1,5))
        t1=i;
        T_5=[T_5;t1];
    end
end
h=0.001;
T1=h*T_1;
T2=h*T_2;
T3=h*T_3;
T4=h*T_4;
T5=h*T_5;
B1=ones(size(T_1,1),1);
B2=2*ones(size(T_2,1),1);
B3=3*ones(size(T_3,1),1);
B4=4*ones(size(T_4,1),1);
B5=5*ones(size(T_5,1),1);
grid on
figure(8)
plot(T1,B1,'+r',T2,B2,'*b',T3,B3,'oy',T4,B4,'squarem',T5,B5,'diamondk');
grid on





