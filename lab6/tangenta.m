function [x] = tangenta(x0, f, fder, tol)
  v = x0;
  while 1
      x = v - f(v) / fder(v);
      err = abs((x - v) / x);
      v = x;
      if err < tol
        return
      endif
  endwhile
endfunction
