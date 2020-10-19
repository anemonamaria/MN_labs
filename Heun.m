function y = Heun(f,a, b, y0, n)
  h=(b - a) / n;
  u=2/3;  
  x = a:h:b;                                        
  y = zeros(1,length(x)); 
  y(1) = y0;
  for i=1:(length(x)-1)
    x1 = x(i) + u * h;
    y1 = y(i) + u * h * f(x(i),y(i));
    y(i+1) = y(i) + h/4 * f(x(i),y(i)) + 3/4 * h * f(x1,y1);
  end
  y=y';
endfunction