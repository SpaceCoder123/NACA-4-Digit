function [yC,Theta] = Mean_Camber_Line_Coordinates(x,Position,Camber,Points)
yC=[];
Theta=[];
dyC_dx=[];
for i=1:1:Points
    if x(i)>=0 && x(i) < Position       
        yC(i)=(Camber/Position^2)*((2*Position*(x(i)))-(x(i))^2);
        dyC_dx(i)=(2*Camber/Position^2)*(Position-(x(i)));
    else
        yC(i)=(Camber/(1-Position)^2)*((1-(2*Position))+(2*Position*(x(i))-(x(i))^2));
        dyC_dx(i)=(2*Camber/Position^2)*(Position-(x(i)));
    end
   Theta(i)=atan(dyC_dx(i));
end
end    


