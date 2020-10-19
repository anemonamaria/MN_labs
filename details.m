arhiva va contine sursele .m, print screen-uri cu rezultatele si cu codul .m 

 

arhiva va avea denumirea LAB_13_MN_NUME_PRENUME_GRUPA.zip
si o veti trimite la adresa george.iordache@cs.pub.ro

 

1) 
function rez = functie(x, y)
rez = y*sin(x)-1;
endfunction

 

tangenta_ameliorata(f=@functie,a=0,b=3,y0=0.5,n=10)

 

%{
y=
   0.500000
   0.215691
  -0.074489
  -0.421686
  -0.883347
  -1.521975
  -2.390099
  -3.495294
  -4.751827
  -5.952477
  -6.811686
%}
2) runge kutta 4

 

function rez = functie(x, y)
rez = y*sin(x)-1;
endfunction

 


f = @functie
n = 10;
a = 0;
b = 3;
h = (b-a)/n;
y0 = 0.5

 

%{
y =
   0.500000
   0.213770
  -0.079085
  -0.431524
  -0.902985
  -1.557599
  -2.447435
  -3.575427
  -4.847639
  -6.051285
  -6.905223
%}  

3)
function rez = functie(x, y)
rez = y*sin(x)-1;
endfunction

 

euler_cauchy(f=@functie,a=0,b=3,y0=0.5,n=10)
%{
y = 
   0.500000
   0.208866
  -0.088026
  -0.442826
  -0.913258
  -1.560678
  -2.434218
  -3.535915
  -4.775178
  -5.946383
  -6.775950
%}

 

4) Heun
function rez = functie(x, y)
rez = y*sin(x)-1;
endfunction

 

Heun(f=@functie,a=0,b=3,y0=0.5,n=10)

 

%{
y =
   0.500000
   0.213410
  -0.079053
  -0.428882
  -0.893656
  -1.535554
  -2.406028
  -3.510810
  -4.762411
  -5.953876
  -6.803383
%}
 
 5)

 

function rez1 = functie1(x, y, z)
rez1 = z;
endfunction

 

function rez2 = functie2(x, y, z)
rez2 = y + x*z;
endfunction

 

f1 = @functie1
f2 = @functie2
n = 10;
a = 0;
b = 2;
h = (b-a)/n;
y10 = 1
y20 = 0
x= zeros(n,1);
y1= zeros(n,1);
y2= zeros(n,1);

 

x(1) = 0; 
y1(1) = y10;
y2(1) = y20;

 


%{
y1 =
   1.0000
   1.0202
   1.0833
   1.1972
   1.3771
   1.6487
   2.0543
   2.6642
   3.5960
   5.0518
   7.3862
y2 =
    0.00000
    0.20404
    0.43331
    0.71832
    1.10168
    1.64865
    2.46515
    3.72982
    5.75362
    9.09316
   14.77235
%}
 