Pop_Selecionada = Populacao_Atual;   % Zera teoricamente 'Pop_Selecionada'

%        ***************** Selecao por Torneio *****************        %
for i=1 : Tam_Populacao
    Primeiro_Ind = round (1 + rand * (Tam_Populacao-1));    
    j=0;
    while j==0,
          Segundo_Ind = round (1 + rand * (Tam_Populacao-1));
          if(Segundo_Ind ~= Primeiro_Ind)
             j=1;
          end,
    end,
    if(fitness(Primeiro_Ind) > fitness(Segundo_Ind))
       Pop_Selecionada(i,:) = Populacao_Atual(Primeiro_Ind,:);
    else
       Pop_Selecionada(i,:) = Populacao_Atual(Segundo_Ind,:); 
    end
end    
