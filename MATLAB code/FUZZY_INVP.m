clc;
clear ;
close all;

fuzzycore = readfis('FUZZY_INVP_v4.fis');

figure();
plotmf(fuzzycore,'input',1);

k=0.2;

fuzzycore_tuning = simple_tuning(fuzzycore,k);
figure();
plotmf(fuzzycore_tuning,'input',1);

z=lookup_fis(fuzzycore_tuning);

[m,n]=size(z);
x = 0:0.1:1;
fid = fopen('table.txt', 'w');
for i=1:m
    fprintf(fid,'Data %d  %s angle = %d , change_angle = %d \r\n',round(z(i,3)),39, round(z(i,1)), round(z(i,2)));
end
%a = [1.02 3.04 5.06];
%fprintf(fid,'%d\n',round(a));
fclose(fid);
figure();
gensurf(fuzzycore_tuning,[1 2],1,[40 40]);




