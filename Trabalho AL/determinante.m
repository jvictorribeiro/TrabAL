%função para calcular o determinante de uma matriz já escalonada, que é uma matriz equivalente a dos coeficientes
%O calculo é feito levando em conta q a matriz escalonada é uma matriz triangular
%sendo assim o calculo de sua determinante é feito pelo produto do elementos da diagnal principal

function [retorno]= determinante(A)
  
  [n m] = size(A);
  retorno = 1; %inicia a variavel retorno como 1, pois se começar de 0 não conseguiremos obter o determinante
  
  for i=1:n  %percore a matriz
    retorno = retorno *A(i,i);  %pega somente os elementos da diagonal principal
  
  endfor

endfunction
    
    