[6:26 p. m., 5/7/2021] +52 1 712 133 1936: clear; clc;
a=0; b=3; %INTERVALO
n_rec=5; %numeros de regtangulos
delta_x =(b-a)/n_rec; %delta
x=zeros(1,n_rec+1); %valores de x= n+1
%almacenamiento de los valores de X
for k=1:length(x)
    x(k)=a+(k-1)*delta_x;
end
f=feval('funcion',x);%llamado de la funcion
%Derecha
Area_der=0;
for i=1:n_rec
    Area_der=Area_der+f(x(i+1))*delta_x;
end
%izquierda
Area_izq=0;
for j=1:n_rec
    Area_izq = Area_izq+f(x(j))*delta_x;
end
%MOSTRAR EN PANTALLA
Area=[Area_izq,Area_der];
double(Area)
% PUNTOS MEDIOS
medio=zeros(1,length(x)-1);
for k=1:n_rec
    medio(k)=(x(k)+x(k+1))/2;
end
Area_medio=0;
for l=1:n_rec
    Area_medio=Area_medio+f(medio(l))*delta_x
end

Area=[Area_izq,Area_medio,Area_der];
double(Area)
[6:27 p. m., 5/7/2021] +52 1 712 133 1936: function f=funcion(x)
f=@(x) 2*x^2;
