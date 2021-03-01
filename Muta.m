Mvar = 1;
% Seleciona quatro indices randomicamente para fazer as trocas de posições
while(Mvar < 2)
    MI1 = round (1 + rand * (Quant_Ind_Inic-1));   
    Mb=0;
    while Mb==0,
          MI2 = round (1 + rand * (Quant_Ind_Inic-1));
          if(MI2 ~= MI1)
             Mc=0; 
             while Mc==0,
                   MI3 = round (1 + rand * (Quant_Ind_Inic-1));
                   if(MI3 ~= MI2)
                       Md=0;
                       while Md==0,
                             MI4 = round (1 + rand * (Quant_Ind_Inic-1));
                             if(MI4 ~= MI3)              
                                Md=1;
                             end 
                       end                         
                       Mc=1;
                   end 
             end
             Mb=1;   
          end
    end
          
    
    % Alteracoes no Idividuo 1
    Mvar_Temp = Pop_Mutacao(cont,MI3);
    Pop_Mutacao(cont,MI3) = Pop_Mutacao(cont,MI4);
    Pop_Mutacao(cont,MI4) = Mvar_Temp;   
    
    Mvar_Temp = Pop_Mutacao(cont,MI1);
    Pop_Mutacao(cont,MI1) = Pop_Mutacao(cont,MI2);
    Pop_Mutacao(cont,MI2) = Mvar_Temp;    
    
    Mvar = Mvar + 1;
end,   


