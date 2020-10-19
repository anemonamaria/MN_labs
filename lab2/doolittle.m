function  [L U] = doolittle(A)
  [n n]  = size (A);
  L = zeros (n);
  U = eye (n);
  L(1:n,1) = A(1:n,1);
  
  for p = 1 : n
    for j = p: n
      s = 0;
      for k =  1 : p-1
        s = s+L(p,k)*U(k,j);
      endfor
      U(p,j) = A(p,j)-s;
    endfor
    
    for i = p+1 : n
      
      s = 0;
      for k = 1 : p-1
        s = s+L(i,k)*U(k,p);
      endfor
      
      L(i,p) = (A(i,p)-s)/U(p,p);
      
    endfor
  endfor
endfunction
