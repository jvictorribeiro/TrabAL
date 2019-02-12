function [solucao]= solucionar(A,b)
  
  [n m] = size(A);   
  U = elGauss(A,b);
  
  USemB = U;     %matriz recebe a escalonada de A sem o conjunto solucao
  USemB(:,m+1) = [];

  if(determinante(USemB) == 0)
    indice = 0;
    
    for i=1:n
      if(U(i,i) == 0)
        indice = i; %a variavel indice recebe a linha em que temos 0 na diagonal
      endif
    endfor
    
    if(b(indice) == 0)
      printf("Sistema indeterminado\n\n") %0=0, sistema indeterminado
    else
      printf("Sistema inconsistente\n\n") %ex:0=1, é uma contradição, então é incosistente
      
      #AJEITAR ISTO PARA A VARIAVEL LIVRE = 0
      
      for i=1:n
        bEsc(i,1) = U(i,n+1); %pega os valores da ultima coluna de U e transporta para outra matriz chamada bEsc
      endfor
    
      x(n) = bEsc(n)/U(n,n);
    
      for i=n-1:-1:1         %algoritmo de solucao de um sistema escalonado
        soma = 0;
        for j=i+1:n
          soma = soma + U(i,j) * x(j) ;    %valor da inc�gnita ser� substituido, multiplicado pelo coeficiente da inc�gnita e soma todos os valores da linha 
        endfor
        x(i) = (bEsc(i)-soma)/U(i,i);     % passa o valor da soma para o outro lado e divide pelo coeficiente de x(i)
       endfor
      solucao = x;
      
      
    endif
  else
    printf("Sistema Determinado\n\n")
    for i=1:n
      bEsc(i,1) = U(i,n+1); %pega os valores da �ltima coluna de U e transporta para outra matriz chamada bEsc
    endfor
    
    x(n) = bEsc(n)/U(n,n);
    
    for i=n-1:-1:1         %algoritmo de solucao de um sistema escalonado
      soma = 0;
      for j=i+1:n
        soma = soma + U(i,j) * x(j) ;    %valor da incognita sera substituido, multiplicado pelo coeficiente da inc�gnita e soma todos os valores da linha 
      endfor
      x(i) = (bEsc(i)-soma)/U(i,i);     % passa o valor da soma para o outro lado e divide pelo coeficiente de x(i)
    endfor
    solucao = x;
  endif
endfunction
