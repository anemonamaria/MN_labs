function [A, b] = GPT(A, b)
 [n n] = size(A);

 for p = 1 : n - 1
 pivot = -inf
 linie_pivot = -1;
 coloana_pivot = -1;

 for i = p : n
 for j = p : n
 if pivot < abs(A(i, j));
 pivot = abs(A(i, j));
 linie_pivot = i;
 coloana_pivot = j;
 endif
 endfor
 endfor

 if p ~= linie_pivot
 for j = p : n
 t = A(p, j);
 A(p, j) = A(linie_pivot, j);
 A(linie_pivot, j) = t;
 endfor

 t = b(linie_pivot);
 b(linie_pivot) = b(p);
 b(p) = t;
 endif

 if p ~= coloana_pivot
 for i = 1 : n
 t = A(i, p);
 A(i, p) = A(i, coloana_pivot);
 A(i, coloana_pivot) = t;
 endfor
endif

 for i = p + 1 : n
 if A(p, p) == 0
 continue;
 endif

 tp = A(i, p)/A(p, p);
 A(i, p) = 0;
 for j = p + 1 : n
 A(i, j) = A(i, j)-tp*A(p, j);
 endfor

 b(i) = b(i)-tp*b(p);
 endfor
 endfor
 endfunction
 A=[1.5 -2.1; -7.6 3.11]
 b=[8.3 ; 6.7 ]