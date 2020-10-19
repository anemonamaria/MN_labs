function d = TwoPoints(f, h, x0)
  d = ( f(x0 + h) - f(x0) ) / h;
endfunction