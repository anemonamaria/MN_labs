function [success] = ConvergesSOR(A, b, x0, tol, max_iter, w)
    % Completați următoarele linii pentru a stabili daca matricea A converge pentru metoda SOR
    N = NaN;
    P = NaN;
    G = NaN;
    % Calculați raza spectrală a matricei G
    spectral_radius = NaN;
    success = NaN;
endfunction

% Testați implementarea
[success] = ConvergesSOR([4 1 2 0; 3 -2 0 -1; -1 3 5 1; 2 1 0 5], [5; -4; 1], [0; 0; 0], 0.01, 20, 1.1)