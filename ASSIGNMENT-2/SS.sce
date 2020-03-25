clc;clear;close

// FOR ANY ORDER [NxM] MATRIX

A=input("enter any order matrix")
disp(A);

[m,n]=size(A); 

[v,pivot]=rref(A); 
 
disp(v,'v');
disp(pivot,'p');

r=length(pivot); 
disp(r,'rank=') 

cs=A(:,pivot); 
disp(cs,'column space='); 

ns=kernel(A); 
disp(ns,'null space='); 

rs=v(1:r,:)'; 
disp(rs,'row space='); 

lns=kernel(A'); 
disp(lns,'left null space=');
