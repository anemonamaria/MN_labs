function [C] = detPolInterpTrig(m, y)
  C = zeros(m, 1);
  for k = 1:m
    s1 = 0;
    s2 = 0;
    for j = 1:m
      s1 += y(2*j-1)*e^(2*1i*(k-1)*pi*(j-1)/m);
      s2 += y(2*j)*e^(2*1i*(k-1)*pi*(j-1)/m);
    endfor
    s1 *= 2;
    s2 *= 2*e^(1i*(k-1)*pi/m);
    
    C(k) = (s1 + s2)/2;
    C(k+m) = (s1 - s2)/2;
  endfor
endfunction

%[C] = detPolInterpTrig(m=4, y = [1 1 1 1 1 1 1 1])

 

%{
C = 8.00000 + 0.00000i
  -0.00000 + 0.00000i
  -0.00000 + 0.00000i
  -0.00000 + 0.00000i
   0.00000 + 0.00000i
   0.00000 + 0.00000i
   0.00000 + 0.00000i
   0.00000 + 0.00000i
%}

 

%[C] = detPolInterpTrig(m=2, y = [1 1 1 1])

 

%{
C = 4.00000 + 0.00000i
   -0.00000 + 0.00000i
    0.00000 + 0.00000i
    0.00000 + 0.00000i
%}