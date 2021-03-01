%   Loop Principal  %

Ler_Parametros
Primeira_Pop
Calc

for i=1 : Num_Geracoes       
    Selecao    
    Cruzamento
    Mutacao     
    Populacao_Atual = Pop_Mutacao;
    Calc    
    Pop_Selecionada = Pop_Mutacao;
end,

Imprime_Informacoes

