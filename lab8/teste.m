Exercitiul 1

%{

Implementati in OCTAVE algoritmul QR fara deplasare pentru determinarea valorilor

proprii ale unei matrice simetrice tridiagonale.

Date de intrare: A - matricea simetrică tridiagonală;

n - dimensiunea matricei;

tol - toleranta acceptată;

maxiter - numărul maxim de iteratii. Date de iesire: valorile proprii ale matricei

A sau un mesaj de eroare in cazul in care a fost depasit maxiter.

%}

 

A = [6, 1, 0; 1, 4, 2; 0, 2, 3];

 

X = QR_fara_deplasare(A= [6, 1, 0; 1, 4, 2; 0, 2, 3], tol= 0.00001, maxiter = 100000);

X

eig(A)

 

Exercitiul 2

%{

Pornind de la programul anterior, realizati implementarea algoritmului QR cu de-

plasare explicită pentru a determina valorile proprii ale unei matrice simetrice tridi-

agonale.

%}

 

A0=A;

 

A = [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.];

A = [6, 1, 0; 1, 4, 2; 0, 2, 3];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [6, 1, 0; 1, 4, 2; 0, 2, 3], tol= 0.1, maxiter = 100000);

X

A = [2, 4, 0; 4, 2, -3; 0, -3, -1];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, 4, 0; 4, 2, -3; 0, -3, -1], tol= 0.1, maxiter = 100000);

X

A = [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1], tol= 0.1, maxiter = 100000);

X

A = [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3], tol= 0.1, maxiter = 100000);

X

 

A = [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.];

 

X = QR_cu_deplasare(A= [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.], tol= 0.01, maxiter = 10000);

X

eig(A)



%{ Exercitiul 3

Determinati primele două iteratii ale algoritmului QR fără deplasare pentru matricile simetrice tridiagonale următoare:

%}

 

A = [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.];

A = [6, 1, 0; 1, 4, 2; 0, 2, 3];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [6, 1, 0; 1, 4, 2; 0, 2, 3], tol= 0.1, maxiter = 100000);

X

A = [2, 4, 0; 4, 2, -3; 0, -3, -1];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, 4, 0; 4, 2, -3; 0, -3, -1], tol= 0.1, maxiter = 100000);

X

A = [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1], tol= 0.1, maxiter = 100000);

X

A = [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3];

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3], tol= 0.1, maxiter = 100000);

X

X = Metoda_QR_fara_deplasare_exercitiul_3(A= [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.], tol= 0.1, maxiter = 100000);

X

 

%{

X =

 

   19.70252    3.68401    1.05516    0.07485

    0.00000   -6.27774    1.89304    0.83412

    0.00000   -0.00000   -4.07002    1.01477

    0.00000    0.00000    0.00000   -1.35476

%}

eig(A)


%{ Exercitiul 4

Folosind algoritmul QR cu deplasare explicita, determinati valorile proprii ale

matricelor de la Problema 3 cu o tolerant,_a de 10-5.

%}

 

%{A = [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.];

%}

 

A = [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.];

 

A = [6, 1, 0; 1, 4, 2; 0, 2, 3];

X = Metoda_QR_cu_deplasare_exercitiul_4(A= [6, 1, 0; 1, 4, 2; 0, 2, 3], tol= 0.00001, maxiter = 100000);

X

%{X =  6.64575  -0.00001   0.00000

      -0.00001   5.00000  -0.00000

       0.00000   0.00000   1.35425

%}

 

eig(A)

A = [2, 4, 0; 4, 2, -3; 0, -3, -1];

X = Metoda_QR_cu_deplasare_exercitiul_4(A= [2, 4, 0; 4, 2, -3; 0, -3, -1], tol= 0.00001, maxiter = 100000);

X

%{

X = 6.63278   0.00002   0.00000

    0.00002  -3.86672   0.00000

    0.00000   0.00000   0.23394

%}

eig(A)

 

A = [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1];

X = Metoda_QR_cu_deplasare_exercitiul_4(A= [2, -3, 0, 0; -3, 3, -2, 0; 0, -2, 4, -1; 0, 0, -1, 1], tol= 0.00001, maxiter = 100000);

X

%{

X =  6.60397   0.00000  -0.00000   0.00000

     0.00000   3.59387   0.00002   0.00000

     0.00000   0.00002  -0.95101  -0.00000

     0.00000   0.00000   0.00000   0.75317

%}

eig(A)

 

A = [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3];

X = Metoda_QR_cu_deplasare_exercitiul_4(A= [2, -2, 0, 0; -2, 2, 4, 0; 0, 4, 2, -2; 0, 0, -2, 3], tol= 0.00001, maxiter = 100000);

X

%{

X = -2.76701   0.00000   0.00000   0.00000

    0.00000   6.91840   0.00000   0.00000

    0.00000   0.00000   1.49562  -0.00000

    0.00000   0.00000   0.00000   3.35299

%}

eig(A)

 

X = Metoda_QR_cu_deplasare_exercitiul_4(A= [2., 3, 4, 5; 4, 2., 5, 6; 5, 7, 2., 7; 6, 8, 10, 2.], tol= 0.01, maxiter = 10000);

X

eig(A)