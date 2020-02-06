clc;clear;close;

// FOR ANY SYSTEM OF EQUATIONS 

A=[];        // COLUMN VECTOR
B=[];       // LOAD VECTOR
n=length(B);

aug=[A,B]; // ARGUMENTED MATRIX

// F-E

for j=1:n-1
    for i=j+1:n
        aug(i,j:n+1)=aug(i,j:n+1)-aug(i,j)/aug(j,j)*aug(j,j:n+1);
      end
end

// B-S

x=zeros(n,1);
x(n)=aug(n,n+1)/aug(n,n);
for i=n-1:-1:1
    x(i)=(aug(i,n+1)-aug(i,i+1:n)*x(i+1:n))/aug(i,i);
end

// DISPLAY

//UNKNOWNS 
for k=1:n
    disp(x(k));
end

//PIVOT ELEMENTS
for l=1:n
    disp(aug(l,l));
end
