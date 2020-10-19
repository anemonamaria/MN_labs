function [x_current_step step] = GaussSeidel(A, b, x0, tol, max_iter)
    % TODO 1: Verificați dacă metoda Gauss-Seidel converge pentru matricea A și în caz contrar returnați [NaN, -1]
    success = NaN;
    
    n = length(b);
    x_last_step = x0;
    x_current_step = x0;
    % Iterează până la numărul maxim de pași acceptat
    for step = 1 : max_iter
        % Pentru fiecare element din vectorul soluție
        for i = 1 : n
            % TODO 2: Calculează suma care folosește valori calculate la pasul curent
            current_step_sum = NaN;

            % TODO 3: Calculează suma care folosește valori calculate la pasul anterior
            last_step_sum = NaN;

            % TODO 4: Calculează noua valoare a elementului x(i)
        endfor

        % TODO 5: Verifică daca s-a ajuns la o soluție suficient de bună
        % Hint: funcția norm
        
        % TODO 6: Actualizează soluția precedentă cu cea curentă
        x_last_step = x_current_step;
    endfor
endfunction 
