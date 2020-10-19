function y = Euler_Cauchy(f, a, b, y0, n)
  h=(b - a) / n;                                            
  x = a:h:b;                                        
  y = zeros(1,length(x)); 
  y(1) = y0;
  for i=1:(length(x)-1)  
    xi1 = x(i) + h;
    yi1 = y(i) + h * f(x(i), y(i));
    y(i+1) = y(i) + h/2 * (f(x(i),y(i)) + f(xi1, yi1));
  endfor
y = y';
end