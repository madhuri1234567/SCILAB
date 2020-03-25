clc;clear;close 

// FOR ANY ORDER [NxM] MATRIX
 
A=input("enter any order matrix")
disp(A);
[r,c]=size(A);
for z=1:(c-1)
 for k=(z+1):r
    A(k,:)=A(k,:)-(A(k,z)/A(z,z))*A(z,:); 
 end
 disp(A)
end
for i=1:r
 for j=i:c 
  if(A(i,j)<>0) 
   disp('is a pivot column',j, 'column') 
   break 
  end 
 end 
end
 
