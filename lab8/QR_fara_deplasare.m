function [X] = QR_fara_deplasare(A,n,tol,maxiter)
  maxiter--;
  while maxiter>0
    [Q R]= qr(A);
    NA = R*Q;
    if norm(A-NA)<tol
      break;
    endif
    A=NA;
    maxiter--;
  endwhile
  if maxiter == 0
    printf ("nr iteratii prea mic")
  else
    for i=1:n
      X(i) = A(i,i)
    endfor
  endif
endfunction
%X = QR_fara_deplasare(A= [6, 1, 0; 1, 4, 2; 0, 2, 3], n=3, tol= 0.00001, maxiter = 100000);