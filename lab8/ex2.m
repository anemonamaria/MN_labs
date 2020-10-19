function [X]=ex2(A,n,tol,maxiter)
    T = A;
    X = eye(n);
    iter = 0; 
    test = max(max(abs(tril(A, -1))));
    
    while iter <= maxiter && test > tol
      Q = eye(n);
      for i = 1:n
       H = eye(n);
        N=A(i:n, i);
       v = (1.0 / (N(1) + (sign(N(1)) * norm(N)))) * N;
    v(1) = 1;
    H(i:n, i:n) = eye(size(N, 1));
    H(i:n, i:n) = H(i:n, i:n) - (2.0/dot(v, v)) * (v*v');
       Q = Q * H;
       A = H * A;
    endfor
    R = A;
        T = R * Q;
        X = X * Q;
        iter = iter + 1;
        test = max(max(abs(tril(T,-1))));
    end
  endfunction
  