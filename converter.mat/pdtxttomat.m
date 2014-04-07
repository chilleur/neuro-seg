clear all

%G�n�ration de la liste des fichiers non-trait�s
cd('C:\Users\Cl�ment\Documents\Cours\ENS\Premi�re ann�e\Second semestre\Stage\data_pd');
listing = dir;
n = length(listing);

cd('C:\Users\Cl�ment\Documents\Cours\ENS\Premi�re ann�e\Second semestre\Stage\data_matlab'); %Utile pour plus tard !

for k = 1:(n-2)
    A = importdata(listing(k+2).name);
    L = A.colheaders;
    M = A.data;
    
    save(strrep(listing(k+2).name,'.txt','.mat'));
end