function [] = NACA_Four_Digit(NACA_Number,Points)
% Just enter the NACA 4 digit series number, no strings allowed
Chord=1;
X=NACA_Number;
Camber=X(1)/100;
Position=X(2)/10;
x=linspace(0,Chord,Points); 
Thickness=(X(3)/100);



%Mean Camber Line Coordinates
[yC,Theta]= Mean_Camber_Line_Coordinates(x,Position,Camber,Points);


% Thickness Distribution
[Y_T]=Thickness_Airfoil(Thickness,x,Points);


% Airfoil Calculations
[xu,yu,xl,yl]=Slope_Airfoil(Y_T,yC,Theta,x,Points);
plot(xu,yu)
hold on; grid on
plot(xl,yl)
axis equal
Upper=[xu yu]
Lower=[xl yl]
legend('Upper Surface','Lower Surface')
end

