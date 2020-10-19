function y = NumarAparitii(numefis, sir)
  fid=fopen(numefis, 'r');
  v=findstr(numefis, sir);
  dim=length(v);
  s=0;
  for i= 1:dim
    if(v(i)>=0)
    s=s+1;
  endif
  endfor
  disp('Numarul total de aparitii');
  disp(s);
endfunction
