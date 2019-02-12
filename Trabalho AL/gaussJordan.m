%funcao para eliminacao gauss jordan

function []= gaussJordan(A)

	[n m] = size(A);
	I = eye(n); %cria uma matriz identidade
	L = [A I]; % Coloca a matriz A e a identidade lado a lado para se obter a inversa de A.
	[p q] = size(L);
	k = 0;

	for i=1:n 
		if(L(i,i) == 0) 
			input("precisa-se permutar alguma linha, use a eliminação com pivotamento\n", "s");
			clc	
			return;
		endif

		L(i,:) = L(i,:) / L(i,i); % faz os valores de kd linha iguais a 1
    
		for j=i+1:n
			L(j,:) = L(j,:) - (L(j,i) * L(i,:)); % Aqui estamos zerando a parte de baixo da matriz.
		endfor

	endfor

	for a=2:n
		b = a-1;

		while(b != 0)
			L(b,:) = L(b,:) - L(b,a) * L(a,:); %zerando a parte de cima.
			b--;
		endwhile

	endfor

	printf("Matriz ");
	A
	printf("Matriz ");
	inversaA = L(:,n+1:q)

	printf("Produto A*(A^(-1)) = ");
	A*inversaA

	input("Pressione enter para continuar...", "s");
	clc

endfunction
