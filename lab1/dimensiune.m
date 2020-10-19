var = input("Introduceti numele fisierului; ");
fid=fopen(var,'r');
fseek(fid,0,'eof');
dim=ftell(fid);
fclose(var);
disp(dim);