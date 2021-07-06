clear; clc;
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

function f=funcion(x)
f=@(x) 2*x^2;

clc,clear
syms x;
f=input('ingrese la funcion ');
a=input('ingrese el inicio del intervalo ');
b=input('ingrese el fin del intervalo ');
n=input('ingrse la cantidad de intervalo ');
dx=(b-a)/n;
resultado=zeros(1,n); 
i=0;
fs=subs(f,x,(a+i*dx));
fr=fs*dx;
resultado(1)=fr;
for i=1:n;
    fs=subs(f,x,(a+i*dx));
    fr=fs*dx;
    resultado(i+1)=resultado(i)+fr;
end
fprintf('el area bajo la curva es = %d \n',double(resultado));
x=a:dx:b;
bar(x,resultado)
