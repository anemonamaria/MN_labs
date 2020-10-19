A = [1 0 0 ; 1 1 0; 2 1 1];
b = [1;1;1];
[L U] = crout(A);

y=SIT(L,b);
x=SST(U,y);