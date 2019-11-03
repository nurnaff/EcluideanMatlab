%membaca data project yang akan ditentukan green atau red
A=xlsread('data_ipk.xls','B2:D95');
%membaca data nilai centroid cluster green and red
C=xlsread('data_ipk.xls','H98:J100');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung euclidian distance setiap baris data dengan nilai
%centroid cluster 1 dan 2
for i=1:baris
    for j=1:kolom
   Desain=sqrt(sum((A(i,j)-C(1,j)).^2));
   Pemrograman=sqrt(sum((A(i,j)-C(2,j)).^2));
   Jaringan=sqrt(sum((A(i,j)-C(3,j)).^2));
    end
   if((Desain<Pemrograman) && (Desain<Jaringan))
     H(i)="Desain";
   else
       if((Pemrograman<Desain) && (Jaringan<Pemrograman))
           H(i)="Pemrograman";
       else
           H(i)="Jaringan";
       end
   end
end
H=H';