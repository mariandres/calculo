clear all
clc
syms x
f=input('Ingrese la funcion a integrar ') &2+4x^2-x^5
a=input('Ingrese el intervalo inferior ') &2
b=input('Ingrese el intervalo superior ') &8
i=int(f,x,a,b)
ezplot(f)
