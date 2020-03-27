function [yTh] = Thickness_Airfoil(Thickness,x,Points)
yTh=[];
for i=1:1:Points
    yTh(i)=(Thickness/0.2)*((0.2969*sqrt(x(i))-0.1260*x(i)-0.3516*x(i)^2+0.2843*x(i)^3-0.1036*x(i)^4));
end

end

