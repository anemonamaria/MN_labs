function I = Simpson_compus(f, a, b, n)
	% Intrari:
	% f = functia de integrat
	% a, b = capetele intervalului de integrare
	% n = numarul de subintervale de lungime egala din [a,b]
	% Iesiri: valoarea integralei
  sum1 = 0;
  sum2 = 0;
  h = (b - a) / n;
  for j = 1 : n / 2
    x1 = a + (2 * j - 1) * h;
    sum1 = sum1 + f(x1);
  endfor
  for j = 1 : (n / 2 - 1)
    x2 = a + (2 * j) * h;
    sum2 = sum2 + f(x2);
  endfor
 I = (h / 3) * (f(a)+ 4*sum1 + 2*sum2 +f(b));
    

endfunction