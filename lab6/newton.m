function [x iter] = newton(x0, F, J, tol)
  iter = 0;
  if(det(J(x0)) == 0)
    error("Jacobianul nu este inversabil");
  endif
  v = x0;
  while 1
    J_inv = inv(J(v));
    x = v - J_inv * F(v);
    err = abs(x - v);
    v = x;
    if err < tol
      return
    endif
    iter = iter + 1;
  endwhile
endfunction
