function[y1 y2] =Runge_Kutta4_sistem(a,b,n,y10,y20,f1,f2)

h=(b - a)/ n;                                            
x = a:h:b                                     
y = zeros(1,length(x)); 
y(1) = y10;
z(1) = y20;                                            
for i=1:(length(x)-1)                              
    k_1 = f1(x(i),y(i), z(i));
    l_1 = f2(x(i),y(i), z(i));
    k_2 = f1(x(i)+ h/ 2,y(i)+ h/2 *k_1, z(i) + h/2 *l_1);
    l_2 = f2(x(i)+ h/ 2,y(i)+ h/2 *k_1, z(i) + h/2 *l_1);
    k_3 = f1(x(i)+ h/2,y(i)+ h/2 *k_2, z(i)+ h/2 *l_2);
    l_3 = f2(x(i)+ h/2,y(i)+ h/2 *k_2, z(i)+ h/2 *l_2);
    k_4 = f1(x(i)+h,y(i)+k_3*h, z(i) + l_3 * h);
    l_4 = f2(x(i)+h,y(i)+k_3*h, z(i) + l_3 * h);
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
    z(i+1) = z(i) + (1/6)*(l_1+2*l_2+2*l_3+l_4)*h;
end
y1 = y';
y2 = z';
endfunction