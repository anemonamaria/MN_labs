function d = ThreePoints_End(f, h, x0)
  d = (1 / (2 * h)) * ( f(x0 + h) - f(x0 - h) );
endfunction
