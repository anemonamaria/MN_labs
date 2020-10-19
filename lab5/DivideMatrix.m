function [D, L, U] = DivideMatrix(A)
    % Completați următoarele linii pentru a calcula D, L, U
    % Hint: funcțiile diag, tril, triu
    
    
[n n] = size(A);
D = L = U = zeros(n, n);

for i = 1:n
	D(i, i) = A(i, i);
endfor

for i = 1:n
	for j = i+1:n
		U(i, j) = -A(i, j);
	endfor
endfor

for i = 1:n
	for j = 1:i - 1
		L(i, j) = -A(i, j);
	endfor
endfor

   % D = NaN;
    %L = NaN;
    %U = NaN;
endfunction

% Testați implementarea
%[D, L, U] = DivideMatrix([1 5 -3; 6 10 2; -1 7 8])