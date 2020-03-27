clc;clear;close 

A=input("enter the matrix")  
disp(A,'A='); 
[r,c]=size(A)

Y=input("enter the column matrix") 
disp(Y,'Y='); 

X=((A'*A)^-1)*(A'*Y); //FROM NORMAL EQ.
disp(X,'X='); 

M=X(1,1); 
C=X(2,1); 
disp(M,'M='); 
disp(C,'C='); 

disp('The line of best fit is Y=MT+C');

