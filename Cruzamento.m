Pop_Cruz = Pop_Selecionada;
w=1;
Met_Tam = Tam_Populacao/2;
while(w < Tam_Populacao)
        Ind1 = round (1 + rand * (Tam_Populacao-1));  % Seleciona o 1� Indiv�duo randomicamente    
    z=0;
    while z==0,
          Ind2 = round (1 + rand * (Tam_Populacao-1));% Seleciona o 2� Indiv�duo randomicamente
          if(Ind2 ~= Ind1)
             z=1;
          end,
    end,
    Par_Taxa = rand (1);                          % Gera taxa de cruzamento para os Pais randomicamente
    if Par_Taxa <= Taxa_Cruzamento                % Se a taxa de cruzamento gerada for menor ou igual a digitada ent�o 
       Cruza                                      % Fun��o que faz o Cruzamento propriamente dito       
    else
       Pop_Cruz(w,:) = Pop_Selecionada(Ind1,:);   % Se caso a taxa for maior os Pais s�o copiados na nova gera��o (Pop_Cruz)
       Pop_Cruz(w+1,:) = Pop_Selecionada(Ind2,:); 
    end 
    w=w+2;
end,   


