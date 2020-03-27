function [X_Upper,Y_Upper,X_Lower,Y_Lower] = Slope_Airfoil(Yth,Yc,theta,x,Points)
X_Upper=[];
X_Lower=[];
Y_Upper=[];
Y_Lower=[];

for i=1:1:Points
    X_Upper(i)=x(i)+Yth(i)*sin(theta(i));
    Y_Upper(i)=Yc(i)-Yth(i)*cos(theta(i));
end
for i=1:1:Points
     X_Lower(i)=x(i)-Yth(i)*sin(theta(i));
     Y_Lower(i)=Yc(i)+Yth(i)*cos(theta(i));
end
end

