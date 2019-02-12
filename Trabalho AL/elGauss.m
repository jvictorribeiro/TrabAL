%funcao para eliminacao de gauss

function [U,L]= elGauss(A,b)
  
  clc
  [n m] = size(A); % n receberá as linhas de A e m as colunas de A
  matriz_aum = [A b]; %a variavel matriz_aum recebe a matriz aumentada que representa o sistema de equações
   
 
  lower = zeros(n,n);       % cria uma matriz quadrada de zeros
  for i=1:n                 %preenche a diagonal principal com 1
    lower(i,i) = 1;
  endfor 
  
  for i=1:n-1
    for j = i+1:n
      if(matriz_aum(i,i) != 0)
        lower(j,i) = (matriz_aum(j,i) / matriz_aum(i,i));   %divisoes necessarias para se encontrar os coeficientes/elementos da triangular inferior
        matriz_aum(j,:) = matriz_aum(j,:) - (matriz_aum(j,i) / matriz_aum(i,i)) * matriz_aum(i,:); %aplicando o algoritmo "quem eu quero zerar sobre o pivô"
      else
        input("precisa-se permutar alguma linha, use a eliminação com pivotamento", "s"); % se o pivô for zero
        clc
        return;
      endif
    endfor
  endfor

  L = lower
  U = matriz_aum  
  
  %fazendo o calculo da determinante
  if(n != m)
    printf("A matriz nao tem determinante, pois nao é quadrada\n\n")
  else
    detA = determinante(U);
    printf("Determinante de A: %d\n\n", detA);
  endif
  
  USemB = U;     %matriz recebe a escalonada de A sem o conjunto solucao
  USemB(:,m+1) = [];

  classifica(USemB,b)
  
endfunction  
        
    