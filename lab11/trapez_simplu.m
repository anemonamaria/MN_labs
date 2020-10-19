function I = trapez_simplu(f, a, b)
	% Intrari:
	% f = functia de integrat
	% a, b = capetele intervalului de integrare
	% Iesiri:valoarea integralei
  h = b - a;
  I = (h / 2) * ( f(a) + f(b));

endfunction