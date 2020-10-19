function d = ThreePoints_Mid(f, h, x0)
  d = (1 / (2 * h)) * ( -3 * f(x0) + 4 * f(x0 + h) - f(x0 + 2 * h) );
endfunction