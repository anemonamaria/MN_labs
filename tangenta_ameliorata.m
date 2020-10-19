function y = tangenta_ameliorata(f, a, b, y0, n)
	h = (b-a)/n;	
	y(1) = y0;	

	for i = 1 : n
		x = a+(i-1)*h;
		xi1 = x+h/2;
		yi1 = y(i)+h/2*feval(f, x, y(i));
		y(i+1) = y(i)+h*feval(f, xi1, yi1);
	endfor
  y = y';
endfunction	