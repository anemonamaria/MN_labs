function [x_current_step step]=Jacobi (A,b,x0,tol,max_iter)

if ConvergesJacobi(A)

[n n]=size(A);

x=x0;
step=max_iter
while step ~=0
step--;

for i=1:n
        suma=A(i,1:i-1)*x(1:i-1)+A(i,i+1:n)*x(i+1:n);

        x(i)=(b(i)-suma)/A(i,i);  
endfor

    if norm(A*x-b)<tol
        break
    endif
x_current_step=x;
endwhile

x_current_step=x;

else
x_current_step=Nan;
step=-1
endif

endfunction