clear;close;clc;

// FOR ANY ORDER SQUARE MATRIX

A=input("enter the matrix [ANY ORDER SQUARE MATRIX]")
n=length(A(1,:));

for l=1:n
    L(l,l)=1;
end

for i=1:n
    for j=1:n
        s=0;
        if j>=i
            for k=1:i-1
                s=s+L(i,k)*U(k,j);
            end
            U(i,j)=A(i,j)-s;
        else
            for k=1:j-1
                s+s+L(i,k)*U(k,j);
            end
            L(i,j)=(A(i,j)-s)/U(j,j);
        end
    end
end

disp(A,"matrix A");
disp(L,"matrix L");
disp(U,"matrix U");




