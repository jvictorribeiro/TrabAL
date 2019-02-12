#{ 
Trabalho 1 de Algebra Linear
Prof.:Suzana Matos
Equipe:
  - Antonio Sergio A. Faheina
  - Adriel Araujo Oliveira
  - Israel Italo
  - Joao Victor Ribeiro
#}

%Esse arquivo será utiliado parar carregar as entradas e chamar a função do menu

function carregaTudo %OBS a função tem que ter o nome do arquivo bro
  
  clc %comando para limpar a tela do terminal
  
  nome_MatrizA = input ("Informe o nome do arquivo da matriz A: ", "s"); %O "s" retorna uma string colocada pelo usuario diretamente, sem avaliar primeiro
  nome_VetorB = input ("Informe o nome do arquivo do vetor b: ", "s");
  
  addpath("EntradasTeste"); %arquivos serão carregados da pasta EntradasTeste
  A = load (nome_MatrizA) %variavel A recebe a matriz do arquivo selecionado
  b = load (nome_VetorB) %variavel b recebe o vetor do arquivo selecionado
  
  input("Enter para continuar", "s");
  clc
  menu(A,b); %chama a funcao do menu

endfunction
