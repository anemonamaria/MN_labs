function [sol] = aprox_succesive(x0, f, tol)
  g = @(x) (f(x) - 5 * x) / -5;
  v = x0;
  while 1
      sol = g(v);
      err = abs((sol - v) / sol);
      v = sol;
      if err < tol
        return
      endif
  endwhile
endfunction
