Num_Ind_Inic   =  Matriz_Custo(:,1);    % Recebe os indiv�duos, vetores, rotas da Popula��o Inicial
Quant_Ind_Inic =  length(Num_Ind_Inic); % Calcula a quantidade de indiv�duos
x = Quant_Ind_Inic;                     % x recebe a quantidade de indiv�duos
Populacao_Atual = 0;                    % Zera Popula��o
j = 1;

% Fun��o que gera a nova Popula��o 
for i = 1 : Tam_Populacao
      while(j < x+1)             
            Populacao_Atual(i,j) = round (1 + rand * (x-1)); % a Nova Popula��o recebe randomicamente o numero da cidade nos vetores
            Temp = j;                                        % Vari�vel Tempor�ria usada devido ao fato de q o j pode ser decrementado 
            Resulth = 0; 
            %---- Fun��o que n�o permite a repeti��o de cidades nos vetores ---------- 
            if j>1
               for k=1 : Temp-1 
                   if (Populacao_Atual(i,j)==Populacao_Atual(i,k)& Resulth == 0)
                       j = j-1;                        % Se houver posi��o do vetor com valor repetido a coluna do vetor volta uma posi��o pra q seja
                                                       % selecionado novamente randomicamente
                       Resulth = 1;
                   end, 
               end, 
            end,
            %-------------------------------------------------------------------------
            j = j+1;   % incrementa a coluna do vetor  
      end,  
      j = 1;           % Antes da linha ser incrementada a coluna � reiniciada
end,    


