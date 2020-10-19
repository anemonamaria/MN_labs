function [x] = bisectie(a, b, f, tol)
  v = NaN;
  while 1
    x = (a + b) / 2;
    if f(x) * f(b) < 0
      a = x;
    elseif f(x) * f(b) > 0
      b = x;
    else
      a = x;
      b = x;
    endif
    if v ~= NaN
      err = abs((x - v) / x);
      if err < tol
        return
      endif
    endif
    v = x;
  endwhile
endfunction
