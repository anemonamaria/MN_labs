function I = trapez_compus(f, a, b, n)
	% Intrari:
	% f = functia de integrat
	% a, b = capetele intervalului de integrare
	% n = numarul de subintervale de lungime egala din [a,b]
	% Iesiri: valoarea integralei
  h = (b - a) / n;
  sum = 0;
  for i = 1 : n-1
    xi = a + i * h;
    sum  = sum + f(xi);
  endfor
  I = (h / 2) * (f(a) + 2 * sum + f(b));
endfunction