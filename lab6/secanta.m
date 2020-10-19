function [x] = secanta(a, b, f, tol)
  x_old = NaN;
  while 1
    x = (a*f(b) - b*f(a)) / (f(b) - f(a));
    if f(x) * f(b) < 0
      a = x;
    elseif f(x) * f(b) > 0
      b = x;
    else
      a = x;
      b = x;
    endif
    if x_old ~= NaN
      err = abs((x - x_old) / x);
      if err < tol
        return
      endif
    endif
    x_old = x;
  endwhile
endfunction
