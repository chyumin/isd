clc; clear;
pkg load signal;

load 'lista4.mat';

for i=1:64 % Fiz dois laços alinhados para forma a primeira imagem 
  for j=1:64
     a=squeeze(imagem1(i,j,:)); % 
     b=corrcoef(preditora,a); 
       if isnan(b(1,2)) % Essa condicional para cada vez que aprecer um nam ele vai me rotrna 0
          matriz(i,j)=0; 
       else matriz(i,j)=(b(1,2));
       end
  end
end
 
 figure(1);
 imagesc(matriz);
 
  
for i=1:64
  for j=1:64
     a=squeeze(imagem2(i,j,:));
     b=corrcoef(preditora,a); 
       if isnan(b(1,2))
          matriz(i,j)=0; 
       else matriz (i,j)=(b(1,2));
       end
  end
end

 figure(2)
 imagesc(matriz)