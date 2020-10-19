var = input('Introduceti variabila:')
n = var;
s = 0;
for i= 1:n
  if (2*i-1)<=n
    s=s+2*i-1;
  endif
endfor
disp(s);