clc;clear;close 

// FOR ANY MATRIX ORDER [3x3]

A=input("enter the matrix [ORDER [3x3]]")

u0=input("enter the initial vector [AS COLUMN]")
v=A*u0;
a=max(u0); 

while abs(max(v)-a)>0.002 
disp(v,"current eigen vector is") 
a=max(v); 
disp(a,"current eigen velue is") 
u0=v/max(v); 
v=A*u0; 
end 

format('v',4);
disp(max(v),'the largest eigen value is:')
format('v',5) 
disp(u0,'the corresponding eigen vector is:')
