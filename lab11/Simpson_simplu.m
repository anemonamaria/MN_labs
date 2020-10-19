function I = Simpson_simplu(f, a, b)
	% Intrari:
	% f = functia de integrat
	% a, b = capetele intervalului de integrare
	% Iesiri:valoarea integralei
  h = (b - a) / 2;
  I = (h / 3) * (f(a) + 4 * f((a + b)/2) + f(b));

endfunction