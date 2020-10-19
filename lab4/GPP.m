function [A b] = GPP(A, b)
  [n n] = size(A);
  
  for p = 1 : n -1
    pivot = -inf;
    linie_pivot = -1;
    
 
    for i = p: n
      if pivot < abs(A(i, p))
        pivot = abs(A(i, p));
        linie_pivot = i;
      endif
    endfor
    
    if p ~= linie_pivot
      for j = p : n
        t = A(p, j);
        A(p, j) = A(linie_pivot, j);
        A(linie_pivot,j) = t;
      endfor
      
      t = b(linie_pivot);
      b(linie_pivot) = b(p);
      b(p) = t;
    endif
    
    for i = p + 1 : n
      if A(p, p) == 0
        continue;
      endif
      tp = A(i, p)/A(p,p);
      A(i, p) = 0;
      for j = p + 1 : n
        A(i , j) = A(i , j) - tp*A(p, j);
      endfor
      
      b(i) = b(i) - tp * b(p);
    endfor
  endfor
endfunction
      
 A=[1.5 -2.1; -7.6 3.11]
 b=[8.3 ; 6.7 ]
        