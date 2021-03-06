x = Tam_Populacao;                          % x Recebe o Tamanho da Popula��o definida pelo usu�rio
Tam_Vetor_Inic = length(Matriz_Custo(1,:)); % Tam_Vetor_Inic recebe o tamanho do indiv�duo
Func_Obj = 0;

% Fun��o para obter o valor das Fun��es-objetivo
for x=1 : Tam_Populacao,       
    Func_Obj(x) = 0;      
    for y=1 : Tam_Vetor_Inic-1
        l = Populacao_Atual(x,y);               
        c = Populacao_Atual(x,y+1);
        Func_Obj(x) = Func_Obj(x) + Matriz_Custo(l,c);      
    end        
end
  
if Var_Controle2 == 1
   Melhor_FuncObj = Func_Obj(1); % Define um idiv�duo qualquer para ser o Melhor indiv�duo 
   Pior_FuncObj   = Func_Obj(1); %   ||   ||   ||       ||      ||   ||    Pior      ||   
   Var_Controle2 = 0;
end
Melhor_Individuo = Populacao_Atual(1,:);
x = Tam_Populacao;     

 %***** Elitismo (1� Parte) *****%
if Var_Controle == 1 
   Melhor_Individuo_Global = Melhor_Individuo;
   Var_Controle = 0;
end,

% Fun��o q faz compara��es com o vetor 'Func_Obj' para obter o Melhor e o Pior Indiv�duo
while x > 0,  
      if Func_Obj(x)< Melhor_FuncObj
         Melhor_FuncObj = Func_Obj(x);         
         Melhor_Individuo = Populacao_Atual(x,:);
         Melhor_Individuo_Global = Melhor_Individuo; %***** Elitismo (2� PArte) *****%
         Indice_Melhor_Individuo = x;
      end   
      if Func_Obj(x)> Pior_FuncObj
         Pior_FuncObj = Func_Obj(x);
      end    
      x = x-1;  
end



x = Tam_Populacao;

%Fun��o que obtem o fitness de cada indiv�duo e coloca no vetor 'fitness'
while x > 0,  
      Var(x) = Func_Obj(1,x);
      fitness(1,x) = 1/Var(x); % Obt�m o fitness dos vetores
      x = x-1;
end



if (Var_Controle3 == 1)
   Melhor_fitness = fitness(1);
   Var_Controle3 = 0;
end,

x = Tam_Populacao;

% Calcula o Indiv�duo de Melhor fitness
while x > 0,  
      if fitness(1,x) > Melhor_fitness         
         Melhor_fitness = fitness(1,x);         
      end,        
      x = x-1;  
end


% Calcula a M�dia do fitness
Soma_fitness  = sum(fitness(1,:));
Media_fitness = Soma_fitness/Quant_Ind_Inic;


% Vetores de para armazenar os Dados ao Longo das Gera��es
G_Melhor_fitness(Geracao)= Melhor_fitness;
G_Media_fitness(Geracao) = Media_fitness;
G_Melhor_FuncObj(Geracao)= Melhor_FuncObj;
G_Melhor_Individuo_Global(1,:)= Melhor_Individuo_Global;
Geracao=Geracao+1;      
