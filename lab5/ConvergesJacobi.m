function [succes] = ConvergesJacobi(A)
    v=diag(A);
    D=diag(v);
    L=tril(A,-1);
    U=triu(A,1);
    %calculam N P G
    N=D 
    P=L+U
    G=(N^-1)*(P)
    %calculam raza spectrala
    spectral_radius=max(eig(G))
    if(spectral_radius<1)
      succes=1;
    else
      succes=0;
    endif    
endfunction 

% Testați implementarea
%succes = ConvergesJacobi([1 5 -3; 6 10 2; -1 7 8])
        [n m] = size(c);
        x_old = zeros(n,m);
        %b = [0.0, 0.0, 0.0, 0.0];
        %;
        max_iter = 100;
  p = size(G_rowptr, 2); % Matrix size
  x = zeros(size(x_old, 1), 2); % Initialize new iterate
  iter_counter = 0; % Initialize iteration counter
  iter_error = tol*2; % Ensure at least one iteration 
  while iter_counter < max_iter && iter_error > tol
    
    % Go through each row
    for i = 1 : p
        
        % Index of current row
        current_G_rowptr = G_rowptr(i);
        
        % Index of next row
        if i ~= p
            
            next_G_rowptr = G_rowptr(i + 1);
        
        elseif
        
            next_G_rowptr = G_rowptr(i) + 2;
            
        endif
        
        s = c(i);
        
        % Go through each non-zero element not on the diagonal
        for j = current_G_rowptr + 1 : next_G_rowptr - 1
            
            s = s - G_values(j) * x_old(column_index(j));
            
        endfor
        
        x(i) = s / G_values(current_G_rowptr);
        
      endfor
      % Calculate new iteration error
      iter_error = abs(norm(x, 2) - norm(x_old, 2));
    
     % Update old iterate
      x_old = x;
    
      % Update iteration counter
      iter_counter = iter_counter + 1;
    
  end
  % Error message if Jacobi method did not converge
  if iter_error > tol
    
    error('Jacobi method did not converge!');
    
  endif