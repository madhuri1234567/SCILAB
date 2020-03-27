clc;clear;close 

// FOR ANY MATRIX ORDER [3x3]

A=input("enter the matrix [ORDER [3x3]]")

X=poly(0,'X');
X=X;  

charmat=A-X*eye(3,3); 
disp(charmat,'the characteristic matrix is');

charpoly=poly(A,'X');
disp(charpoly,'the characteristic polynomial is'); 

X=spec(A);
disp(X,'the eigen values of A are');

[evec,eval]=spec(A); 
disp(evec,'the eigen vectors of A are');
