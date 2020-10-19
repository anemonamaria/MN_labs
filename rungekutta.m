function y = rungekutta(f, a, b, y0, n)
h=(b - a)/ n;                                            
x = a:h:b;                                     
y = zeros(1,length(x)); 
y(1) = y0;                                             
for i=1:(length(x)-1)                              
    k_1 = f(x(i),y(i));
    k_2 = f(x(i)+ h/ 2,y(i)+ h/2 *k_1);
    k_3 = f((x(i)+ h/2),(y(i)+ h/2 *k_2));
    k_4 = f((x(i)+h),(y(i)+k_3*h));
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
end
y = y';
endfunction