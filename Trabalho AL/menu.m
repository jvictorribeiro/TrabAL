%função do menu, onde serão chamadas as funções
%Note q o determinante e a classificação estão inclusos dentro das operações, assim ele imprimirá o sistema escalonado, o determinante, e sua classificação, por exemplo

function []= menu(A,b) % brackets dps do comando omite a saida do input 
  
	printf("------------ Trabalho 1 de Álgebra Linear ------------\n")
	printf("----------------- Grupo só o PIPZ --------------\n")

	printf("\n")
	printf("1 - Eliminação de Gauss.\n") 
	printf("2 - Fatoração LU com pivotamento.\n") 
	printf("3 - Método de Gauss-Jordan.\n") 
  printf("4 - Solucao do sistema, so funciona para determinados\n")
	printf("5 - Escolher outra matriz e vetor.\n")
	printf("6 - Sair.\n")
	printf("\n")

  opcao = input ("digite qual operação deseja realizar: ")
  
  if(opcao == 1)
    clc
    elGauss(A,b)
    menu(A,b)
  elseif(opcao == 2)
    clc
    fatPivot(A,b)
    menu(A,b)
  elseif(opcao == 3)
    clc
    gaussJordan(A,b)
    menu(A,b)
  elseif(opcao == 4)
    clc
    solucionar(A,b)
    menu(A,b)
  elseif(opcao == 5)
    clc
    carregaMatriz 
  elseif(opcao == 6)
    clc
    printf("Programa terminado com sucesso\n\n")
    return;
  else
    clc
    printf("Opção invalida\n\n")
    menu(A,b)
  endif
    
endfunction