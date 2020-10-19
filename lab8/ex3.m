function [X] = ex3(A,n,tol,maxiter)
  maxiter--;
  cont = 1;
  while maxiter>0
    [Q R]= qr(A);
    NA = R*Q;
    if norm(A-NA)<tol
      break;
    endif
    A=NA;
    cont  = cont + 1;
    if cont < 4
      for i=1:n
        X(i) = A(i,i);
      endfor
      X
    endif
    maxiter--;
  endwhile
  if maxiter == 0
    printf ("nr iteratii prea mic")
  else
    for i=1:n
      X(i) = A(i,i);
    endfor
  endif
endfunction