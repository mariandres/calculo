clear all
clc
syms x
f=input('Ingrese la funcion a integrar ')
a=input('Ingrese el intervalo inferior ')
b=input('Ingrese el intervalo superior ')
i=int(f,x,a,b)
ezplot(f)
