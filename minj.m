function y = minj(u)
xi=u(1); %current position
xf=u(2); %setpoint
t=u(3); %current time
d=u(4); %total time
xdot=(xf-xi)*(10*(t/d)^3-15*(t/d)^4+6*(t/d)^5);
if t<0 || t>d
    y=xf;
else
    y=xi+xdot;
end

    