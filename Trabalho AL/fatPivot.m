%funcao para fazer a fatoração lu com pivotamento

function [U]= fatPivot(A,b)

	U = [A b];
	[n m] = size(A);
	L = zeros(n);  %cria uma matriz de zeros nxn, essa será a matriz L
  p = eye(n); % retorna uma matriz identidade nxn, essa será a matriz P
  aux = 0;  %vai pegar a linha com o candidato a pivo 
	
	for i=1:n-1 %n-1 pra n pegar o vetor b
    u = max(U(:,i)); %candidato a pivo
    
    for g=i:n
	   if(U(g,i) == u)
		    aux = g; % Pega a linha na qual temos o candidato à pivô
      
	   endif
    
    endfor
      
	  temp = U(i,:);    %com a ajuda de uma variavel auxiliar permutamos a matriz
	  U(i,:) = U(aux,:);
	  U(aux,:) = temp;
  
	  temp2 = L(i,:);   %msm principio da permutação anterior, mas para a matriz L
	  L(i,:) = L(aux,:);
	  L(aux,:) = temp2;

	  temp3 = p(i,:);   %msm principio das duas anteriores, mas para a matriz P
	  p(i,:) = p(aux,:);
	  p(aux,:) = temp3;
  
    for j=i+1:n                           %fzd a matriz L e o Escalonamento da U
		  L(j,i) = (U(j,i) / U(i,i));
		  U(j,:) = U(j,:) - (U(j,i) / U(i,i)) * U(i,:);   
		endfor

  endfor

  for k=1:n     %diagonal principal de L igual a 1
    L(k,k) = 1;
  endfor

  u = U(:,1:m);
	y = U(:,m+1);

	printf("Matriz P: \n")
  p
  printf("Matriz L: \n")
  L
  printf("Matriz U: \n")
  u
  
  
  %fazendo o calculo da determinante
  if(n != m)
    printf("A matriz nao tem determinante, pois nao é quadrada\n\n")
  else
    detA = determinante(U);
    printf("Determinante de A: %d\n\n", detA);
  endif
  
  classifica(u,y)
  
  input("Enter para continuar", "s");
  clc
  
endfunction
  
  
	

		  