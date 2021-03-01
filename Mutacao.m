Pop_Mutacao = Pop_Cruz;
cont=1;

while(cont <= Tam_Populacao)
    indv1 = round (1 + rand * (Tam_Populacao-1));  % Seleciona um indivíduo randomicamente  
    Tx = rand (1);        % Gera taxa randomicamente 
    if Tx <= Taxa_Mutacao % Se a taxa de for menor que a digitada pelo usuário então chama função 'Muta'
       Muta               % Faz a mutação propriamente dito 
    end 
    cont=cont+1;
end,   

