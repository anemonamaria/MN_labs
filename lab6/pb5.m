p = [3 0 1 -2 0 0 -5];
polyout(p, 'x');
x = roots(p);
n = length(x);
for i = 1:n
  if(imag(x(i)) ~= 0)
    printf("Complex: %f + %fi\n", real(x(i)), imag(x(i)));
  elseif (x(i) > 0)
    printf("Pozitiv: %f\n", x(i));
  elseif (x(i) < 0)
    printf("Negativ: %f\n", x(i));
  else
    printf("Nul: %f\n", x(i));
  endif 
endfor
