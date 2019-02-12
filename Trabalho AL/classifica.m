%função pra classificar quanto a solução

function []= classifica(U,y);
  
  inversivel = determinante(U);
  [n m] = size(U);
  
  if(inversivel != 0) % se o determinante eh diferente de 0, a matriz eh invertivel e o sistema eh consistente
    
    if(n == m) %se for quadrada 
      printf("Sistema consistente e determinado\n\n")
    else %se n for quadrada há variaveis livres, mais variaveis que equaçoes
      printf("Sistema consistente e inderteminado\n\n")
    endif
    
    else %se o determinante for diferente de 0
    indice = 0;
    
    for i=1:n
      if(U(i,i) == 0)
        indice = i; %a variavel indice recebe a linha em que temos 0 na diagonal
      endif
    endfor
    
    if(y(indice) == 0)
      printf("Sistema indeterminado\n\n") %0=0, sistema indeterminado
    else
      printf("Sistema inconsistente\n\n") %ex:0=1, é uma contradição, então é incosistente
    endif
  
  endif
    
endfunction
        
      