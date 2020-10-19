% !!! Exercițiu punctat !!!

function [success] = ConvergesGaussSeidel(A)
    % Completați următoarele linii pentru a stabili daca matricea A converge pentru metoda Gauss-Seidel
    % Hint: Folosiți funcția DivideMatrix
    
    %v=diag(A);
    D=diag(A);
    L=tril(A);
    U=triu(A);
    %calculam N P G
    N=D ;
    P=L+U;
    G=N-P;
    % Calculați raza spectrală a matricei G
    spectral_radius=max(eig(G))
    if(spectral_radius<1)
      succes=1;
    else
      succes=0;
    endif    
endfunction 

% Testați implementarea
%[success] = ConvergesGaussSeidel([1 5 -3; 6 10 2; -1 7 8])