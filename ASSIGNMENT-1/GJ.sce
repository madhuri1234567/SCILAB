clc;clear;close;

// FOR ANY ORDER SQUARE MATRIX

A=input("enter the matrix [ANY ORDER SQUARE MATRIX]")
n=length(A(1,:));
aug=[A,eye(n,n)]   // matrix A & identity matrix

// F-E

for j=1:n-1
    for i=j+1:n
        aug(i,j:2*n)=aug(i,j:2*n)-aug(i,j)/aug(j,j)*aug(j,j:2*n);
      end
end

// B-E

for j=n:-1:2
    aug(1:j-1,:)=aug(1:j-1,:)-aug(1:j-1,j)/aug(j,j)*aug(j,:);
end

// DIAGONALISATION

for j=1:n
    aug(j,:)=aug(j,:)/aug(j,j);
end

B= aug(:,n+1:2*n);         // INVERSE OF MATRIX A

disp(B);
